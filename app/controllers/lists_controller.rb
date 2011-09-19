class ListsController < ApplicationController
  before_filter :authenticate_user!
  def show
    @list = List.find params[:id]
    @goal = Goal.new
  end
end
