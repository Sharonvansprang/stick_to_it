class ProfilesController < ApplicationController

# before_action :find_user, only: [:new]

  def new
    @profile = Profile.new
  end




def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    if @profile.save
      redirect_to root_path
    else
      render :new
    end

  end



  def show
# raise 'paulien'
  end



  private



  def profile_params
    params.require(:profile).permit(:bio)
  end

  def find_user
    @user = User.find(params[:user_id])
  end


end
