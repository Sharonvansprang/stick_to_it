class AchievementsController < ApplicationController


  before_action :find_challenge
  # , only: [:new, :create]


  def index
    @achievements = current_user.achievements
  end

  def new


    @achievements = current_user.achievements

    @achievement = Achievement.new


# raise "paulien"
  end

  def create

    @achievement = Achievement.new(achievement_params)
    @achievement.user = current_user
    @achievement.challenge = @challenge
    if @achievement.save
      redirect_to user_profile_path(current_user, current_user.profile)
    else
      render :new
    end
  end

  private

  def find_challenge
    @challenge = Challenge.find(params[:challenge_id])
  end

  def achievement_params
    params.require(:achievement).permit(:startdate, :enddate, :challenge, :user)
  end

end




