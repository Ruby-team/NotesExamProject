class NotesController < ApplicationController

  before_action :authenticate_model!, except: [:index, :show]
  def create
    @activity = Activity.find(params[:activity_id])
    @note = @activity.notes.create(note_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity = Activity.find(params[:activity_id])
    @note = @activity.notes.find(params[:id])
    @note.destroy
    redirect_to activity_path(@activity)
  end

  private
  def note_params
    params.require(:note).permit(:title, :annotation)
  end
end
