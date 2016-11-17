class AchievementsController < ApplicationController


  before_action :find_challenge, only: [:new, :create]
  before_action :find_achievement, only: [:show, :edit, :update]
  before_action :find_buddy_achievement, only: [:update]
  before_action :find_user, only: [:index, :show, :edit]


  def index
    # @achievements = current_user.achievements
  end

  def show
    @progress = Progress.new
    @progress_today = Progress.find_by(achievement: @achievement, day: Date.today)
    @buddy_achievement = @achievement.buddy_achievement
    @buddy_progress_today =  Progress.find_by(achievement: @buddy_achievement, day: Date.today)
  end

  def new
    @achievements = Achievement.where(challenge: @challenge)
    @achievement = Achievement.new
  end

  def create
    @achievements = Achievement.where(challenge: @challenge)
    @achievement = Achievement.new(achievement_params)
    @achievement.user = current_user
    @achievement.challenge = @challenge
    if @achievement.save && current_user.profile != nil
      redirect_to profile_path(current_user.profile)
    elsif @achievement.save
      redirect_to root_path
    else
      render :new
    end
  end


def edit
  @achievements = Achievement.where(challenge: @achievement.challenge) - Achievement.where(user: current_user)
end

def update
  @achievement.buddy_achievement = @buddy_achievement
  @buddy_achievement.buddy_achievement = @achievement

  if @achievement.save && @buddy_achievement.save
    redirect_to user_achievements_path(current_user)
  else
    render :new
  end
end


  private

  def find_achievement
    @achievement = Achievement.find(params[:id])
  end

  def find_buddy_achievement
    @buddy_achievement = Achievement.find(params[:achievement][:buddy_achievement_id])
  end

  def find_challenge
    @challenge = Challenge.find(params[:challenge_id])
  end

  def achievement_params
    params.require(:achievement).permit(:startdate, :enddate, :challenge, :user)
  end

  def find_user
    @user = User.find(params[:user_id])
  end

end




