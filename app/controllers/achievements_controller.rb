class AchievementsController < ApplicationController


  before_action :find_challenge, only: [:create]
  before_action :find_achievement, only: [:show, :edit, :update]
  before_action :find_buddy_achievement, only: [:update]
  before_action :find_user, only: [:index, :show, :edit]
  before_action :find_emoji, only: [:show]


  def index
    # @achievements = current_user.achievements
  end

  def show
    @how_many_days = Date.today - @achievement.startdate
    @progress = Progress.new
    @progress_today = Progress.find_by(achievement: @achievement, day: Date.today)
    @buddy_achievement = @achievement.buddy_achievement
    @buddy_progress_today =  Progress.find_by(achievement: @buddy_achievement, day: Date.today)
    @progresses = Progress.where(achievement: @achievement)
    @progresses_buddy = Progress.where(achievement: @buddy_achievement)
    @message = Message.new
    @messages = Message.my_or_my_buddies(@achievement, @buddy_achievement).sorted

    @enddate = @achievement.startdate + 30
    @days_to_go = (@enddate - Date.today).to_i
    # @messages_buddy = Message.where(achievement: @buddy_achievement)
  end

  # def new
  #   @achievements = Achievement.where(challenge: @challenge)
  #   @achievement = Achievement.new
  # end

  def create
    @achievements = Achievement.where(challenge: @challenge)
    @achievement = Achievement.new(achievement_params)
    @achievement.user = current_user
    @achievement.challenge = @challenge
    @other_achievements = Achievement.where(challenge: @challenge)

    if @achievement.save
      redirect_to user_achievements_path(current_user)
    else
      render 'challenges/show'
    end
  end


  def edit
    @challenge = @achievement.challenge
    @other_achievements = @challenge.achievements.no_buddy.starting_on(@achievement.startdate) - [@achievement]
  end

  def update
    @achievement.buddy_achievement = @buddy_achievement
    @buddy_achievement.buddy_achievement = @achievement

    if @achievement.save! && @buddy_achievement.save!
      redirect_to user_achievements_path(current_user)
    else
      render :edit
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


  def find_emoji

    show

 if @buddy_progress_today.nil?

  @buddy_mood = ""

   elsif @buddy_progress_today.mood == "very happy"

    @buddy_mood = "\xF0\x9F\x98\x81"

  elsif @buddy_progress_today.mood == "excited"

    @buddy_mood = "\xF0\x9F\x98\x81"


  elsif @buddy_progress_today.mood == "content"

    @buddy_mood = "\xF0\x9F\x98\x8A"

  elsif @buddy_progress_today.mood == "angry"


    @buddy_mood = "\xF0\x9F\x98\xA0"

  elsif @buddy_progress_today.mood == "stressed out"


    @buddy_mood = "\xF0\x9F\x98\x96"

  elsif @buddy_progress_today.mood == "sad"

   @buddy_mood =  "\xF0\x9F\x98\xA2"

  else
    @buddy_mood = ""


end



if @progress_today.nil?
  @mood = ""

elsif @progress_today.mood == "very happy"

  @mood = "\xF0\x9F\x98\x81"

elsif @progress_today.mood == "excited"

  @mood = "\xF0\x9F\x98\x81"


elsif @progress_today.mood == "content"

  @mood = "\xF0\x9F\x98\x8A"

elsif @progress_today.mood == "angry"


  @mood = "\xF0\x9F\x98\xA0"

elsif @progress_today.mood == "stressed out"


  @mood = "\xF0\x9F\x98\x96"

elsif @progress_today.mood == "sad"

  @mood = "\xF0\x9F\x98\xA2"

elsif @progress_today.nil?
  @mood = ""

else
  @mood = ""

end


end



end




