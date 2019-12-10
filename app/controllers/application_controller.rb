class ApplicationController < ActionController::Base

  def current_user 
    User.find_by(name: "Dakota")
  end
end
