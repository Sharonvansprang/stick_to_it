class PagesController < ApplicationController
  def home
    @life_goals = LifeGoal.all
  end


end
