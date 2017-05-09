class ActivitiesController < ApplicationController


  before_action :authenticate_model!, except: [:index, :show]
  def index
    @activities = Activity.page(params[:page]).per(7)
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def show
    @activity = Activity.find(params[:id])

    @all_files = @activity.filees
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to @activity
    else
      render 'new'
    end
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      redirect_to @activity
    else
      render 'edit'
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    redirect_to activities_path
  end

  private
  def activity_params
    params.require(:activity).permit(:title, :description)
  end
end
