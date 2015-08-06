class HomeController < ApplicationController
  def index
    redirect_to new_user_session_path and return unless current_user
    redirect_to locations_path
  end
end
