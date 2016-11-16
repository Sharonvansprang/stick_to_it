class ProgressesController < ApplicationController

before_action :find_achievement, only: [:create]

  def create
    @progress = Progress.new(progress_params)
    @progress.achievement = @achievement
    if @progress.save
      redirect_to user_achievement_path(current_user, @achievement)
    else
      render :new
    end
  end


private

  def progress_params
    params.require(:progress).permit(:day, :done, :log, :mood)
  end

  def find_achievement
    @achievement = Achievement.find(params[:achievement_id])
  end
end




