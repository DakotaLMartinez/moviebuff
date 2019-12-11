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