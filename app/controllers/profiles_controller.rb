class ProfilesController < ApplicationController

before_action :find_profile, only: [:show, :edit, :update]

def new
  @profile = Profile.new
end

def create
  @profile = Profile.new(profile_params)
  @profile.user = current_user

  if @profile.save
    redirect_to profile_path(current_user.profile)
  else
    render :new
  end
end

def show
  @user = @profile.user
  @challenges = @user.challenges
  @achievements = Achievement.where(user: @user)
end

def edit
  @user = @profile.user
end

def update

  @profile.update(profile_params)
  if @profile.save
    redirect_to profile_path(@profile)
  else
    render :new
  end
end

# def destroy
#   @user = current_user
#   if @user.destroy
#     redirect_to root_url, notice: "User deleted."
#   else
#     render_error_message
#   end
# end

private

def profile_params
  params.require(:profile).permit(:bio, :photo, :photo_cache)
end

def find_profile
  @profile = Profile.find(params[:id])
end


end
