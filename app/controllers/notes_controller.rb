class NotesController < ApplicationController
  respond_to :js
  def create
    @appropriation = Appropriation.find params[:appropriation_id]
    @note = @appropriation.notes.create params[:note]
    respond_with @note
  end

  def destroy
    @appropriation = Appropriation.find params[:appropriation_id]
    @note = @appropriation.notes.find params[:id]
    @note.destroy
    respond_with @note
  end

end
