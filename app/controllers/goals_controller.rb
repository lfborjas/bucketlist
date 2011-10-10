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
    @goal = if params[:list_id].present?
              @appropriation = Appropriation.find_by_list_id_and_goal_id(params[:list_id], params[:id]) 
              return redirect_to(goal_path(params[:id])) unless @appropriation
              @appropriation.goal
            else
              @appropriation = nil
              Goal.find params[:id]
            end
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
