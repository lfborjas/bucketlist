class ListsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authenticate_owner
  def show
    @list = List.find params[:id]
    @goal = Goal.new
  end
  private
    def authenticate_owner
      @list = List.find params[:id]
      redirect_to root_path unless @list.editable_by?(current_user)
    end
end
