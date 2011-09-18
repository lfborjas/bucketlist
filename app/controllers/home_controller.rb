class HomeController < ApplicationController
  def index
    redirect_to list_path(current_user.list) if user_signed_in?
  end

end
