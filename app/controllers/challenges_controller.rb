class ChallengesController < ApplicationController


  def show
    @challenge = Challenge.find(params[:id])
    @achievements = Achievement.where(challenge: @challenge) - Achievement.where(user: current_user)
    @achievement = Achievement.new
    @other_achievements = @challenge.achievements.no_buddy - [@achievement]


  end

end
