class GoalsController < ApplicationController
  respond_to :html, :js
  before_filter :authenticate_user!

  def index
  end

  def create
    @goal = Goal.create params[:goal]
    respond_with @goal
  end

  def show
  end

  def update
  end

end
