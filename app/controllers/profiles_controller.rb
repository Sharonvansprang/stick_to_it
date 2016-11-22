class ProfilesController < ApplicationController


skip_before_action :check_profile
before_action :find_profile, only: [:show, :edit, :update]

def new
  @profile = Profile.new
  questions = ["What is the best place in the world you would like to live in?","What is the one career you would love to enter?",
"Which movie influenced your life most?, Favorite movie of all time? Why so?",
"What’s your biggest goal in life right now?", "What is your favorite way to spend
a Saturday?", "Do you have any pet peeves?", "What was your family like growing up?",
"What were you like as a kid?", "What should I know about you that I’d never think to ask about?",
"Did you—or do you—have a nickname? What’s the story behind it?",
"Who was your favorite schoolteacher or college professor? Why?",
"Have you figured out your calling in life? What is it?  "]
@sample = questions.sample(3)
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
