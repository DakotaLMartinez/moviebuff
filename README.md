# Rails Forms and Associations

For our domain model we'll be using a movie review app.

User 
Movie 
Tag
Review

Features:
- Users can create reviews and select the movie, and tags associated with the review

To support this feature we need the following things built out:
- User Model, Users table, (empty controller) we'll create a user through db/seeds.rb (no authentication, we'll have a current_user method in our application_controller that will return the user we created in seeds)
- Movie scaffold and seed in some data from TMDB.org (scaffold will create full CRUD for movies, but we won't really need it here)
- Tag scaffold so we can create some tags that we can then add to our reviews when we create them.
- Review resource

Reviews:
Dependencies (Gems/packages)
nothing new
Configuration (environment variables/other stuff in config folder)
nothing here
Database
reviews table with title, content and foreign keys for user and movie
Models
Review model:
  - belongs_to :movie
  - belongs_to :user
  - has_many :movie_tags
  - has_many :tags, through: :movie_tags
Views
  - we need an index of all the reviews
  - we need a form to create a new review and associate it with the user, movie and tags.
Controllers
  - full CR(U) for reviews
  - index, new & create (edit & update)
Routes
  - resources for reviews (which gives us the RESTful routes we need)

  To make a review we need this info:
  title: text
  content: text_area
  movie_id: select_tag
  tag_ids: collection of check boxes

Long way for select with options:
```
<select name="movie_id">
  <% Movie.all.each do |movie| %>
    <option value="<%= movie.id %>"><%= movie.title %></option>
  <% end %>
</select>
```
Short way:
```
<%= f.collection_select :movie_id, Movie.all, :id, :title %>
```
Long way for check boxes tags:

<% Tag.all.each do |tag| %>
  <label><input type="checkbox" name="review[tag_ids][]" value="<%= tag.id %>" /><%= tag.name %></label>
<% end %>

Short way for check boxes:

```
<%= f.collection_check_boxes(:tag_ids, Tag.all, :id, :name) do |b|
    b.label { b.check_box + b.text } 
end %>

```

When we have a colleciton of check boxes for inputs we need to specify that in our strong parameters.

tag_ids: []

12/12/19:

Adding Helpers & Partials to our application to encapsulate shared view logic

Example Usage:
`login_links` helper which renders one partial or another depending on whether a user is logged in. 
  - Logged in user sees a link to their profile
  - non-logged in user sees links to sign up/log in

In our layout.html.erb file, we could invoke our `login_links` helper and then that markup would be added at that point.

We could also build a list view version of a resource that we use within index.html.erb

we can use just a partial or a combination of helper & partial:

just the partial:
```
<%= render partial: "review", locals: { review: @review } %>
```

combination:
```
# helper
def render_review_list_view(review)
  render partial: "reviews/review", locals: { review: review }
end

# view code
<%= render_review_list_view(review) %>
```


1/7/2020

Rails authentication using the Devise gem
Dependencies (Gems/packages)
gem 'devise'
Configuration (environment variables/other stuff in config folder)
add config for action mailer default url options
Database
Users table, we'll run a generator that will create a migration for us including the columns we need to support authentication.
Models
User
Views
with devise, we don't actually see any views in our app by default. I'll show you how we can generate the devise views so we can do custom styling.
Controllers
Devise controllers are actually defined within the gem (it's a Rails engine). Rails engines allow us to mount an application within another application and hook into the parent application in a certain place (the model layer in the case of Devise)
Routes
use a helper that Devise gives us to mount the routes within config/routes.rb
devise_for :users

Add login links to layout:
```
<% if !user_signed_in? %>
  <%= link_to "Sign In", new_user_session_path %>
  <%= link_to "Sign Up", new_user_registration_path %>
<% else %>
  <%= button_to "Sign Out", destroy_user_session_path, {method: 'delete'} %>
<% end %>
```
## 1/9/2020
Adding GitHub Omniauth
### Dependencies (Gems/packages)
depends on which provider we choose, in this case we'll use:
```
omniauth-github
dotenv-rails
devise 
```
### Configuration (environment variables/other stuff in config folder)
we're going to need 2 environment variables to hold on to our ID and secret from the Oauth provider. 
we're also going to need to set up an account/Oauth application on the provider site (GitHub)
we also needed to add the ID and secret to the devise omniauth configuration (in config/initializers/devise.rb) 
Also, make sure that the .env file you created is in your .gitignore file so it stays out of version control.

```
config.omniauth :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET'], scope: 'user'
```

### Database
we may need to add a couple of columns to our users table to allow us to find users based on the Oauth provider and uid.
also make sure we add the .env file to the .gitignore so it doesn't get committed to GitHub.
```
rails g migration AddOmniauthToUsers provider:string uid:string
rake db:migrate
```
### Models
we're using devise, so we may add :omniauthable to our devise configuration.
devise :omniauthable, omniauth_providers: %i[github]
We also added a from_omniauth method to handle creating users from Github auth data:
```
def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0, 20]
    user.name = auth.info.name   # assuming the user model has a name
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation!
    user.github_access_token = auth.credentials.token
  end
end
```
### Views
we're going to need a link to the provider authorization page.
```
<%= link_to "Sign in with Github", user_github_omniauth_authorize_path %>
```
### Controllers
we'll need a callback action that will handle the redirect from the Oauth provider and take the code we get through params and use it to request an access token.
We'll also add a devise/omniuath_callbacks_controller where we put this callback action
```
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Github") if is_navigational_format?
    else 
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
```
### Routes
we'll need to have a route that maps to our callback controller action
```
devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
```