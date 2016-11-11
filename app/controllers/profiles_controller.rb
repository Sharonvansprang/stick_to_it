class ProfilesController < ApplicationController

# before_action :find_user, only: [:new]

def new
  @profile = Profile.new
end

def create
  @profile = Profile.new(profile_params)
  @profile.user = current_user

  if @profile.save
    redirect_to user_profile_path(current_user, current_user.profile)
  else
    render :new
  end
end

def show
  @profile = current_user.profile
  @challenges = current_user.challenges
end

def edit
  @profile = current_user.profile
end

def update
  @profile = current_user.profile
  @profile.update(profile_params)

  if @profile.save
    redirect_to user_profile_path(current_user, current_user.profile)
  else
    render :new
  end
end


def destroy
  @user = current_user
  if @user.destroy
    redirect_to root_url, notice: "User deleted."
  else
    render_error_message
  end
end

private

def profile_params
  params.require(:profile).permit(:bio, :photo, :photo_cache)
end

end
