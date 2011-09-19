class GoalsController < ApplicationController
  respond_to :html, :js
  before_filter :authenticate_user!

  def index
  end

  def create
    list = List.find params[:list_id]
    @goal = list.goals.create params[:goal]
    respond_with @goal
  end

  def show
    @goal = Goal.find params[:id]
    respond_with @goal
  end

  def update
  end
  
  def clone
    @goal = Goal.find params[:id]
    current_user.list.goals << @goal
    respond_with @goal
  end
end
