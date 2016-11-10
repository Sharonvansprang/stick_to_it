class LifeGoalsController < ApplicationController

before_action :find_goal, only: [:show]

  # def index
  #   @life_goals = LifeGoal.all
  # end

  def show
    @challenges = @life_goal.challenges
  end


  private

def find_goal
@life_goal = LifeGoal.find(params[:id])
end

end
