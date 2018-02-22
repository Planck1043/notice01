class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def all_users
    User.all
  end
end
