class HomeController < ApplicationController
  def index
    redirect_to new_user_session_path and return unless current_user
  end
end
