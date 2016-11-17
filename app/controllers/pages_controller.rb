class PagesController < ApplicationController
  def home
    @life_goals = LifeGoal.all
    @all_users = User.all.count
  end
end
