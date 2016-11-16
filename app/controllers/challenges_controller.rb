class ChallengesController < ApplicationController


  def show
    @challenge = Challenge.find(params[:id])
    @achievements = Achievement.where(challenge: @challenge) - Achievement.where(user: current_user)


  end

end
