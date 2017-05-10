class FileesController < ApplicationController

  def destroy
    @activity = Activity.find(params[:activity_id])
    @filee = @activity.filees.find(params[:id])
    @filee.destroy
    redirect_to activity_path(@activity)
  end
  def create
    @activity = Activity.find(params[:activity_id])
    @filee = @activity.filees.create(resume_params)
    redirect_to activity_path(@activity)
  end

  private
  def resume_params
    params.require(:filee).permit(:name, :attachment)
  end
end
