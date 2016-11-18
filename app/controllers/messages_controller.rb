class MessagesController < ApplicationController


before_action :find_achievement, only: [:create]

  def create
    @message = Message.new(message_params)
    @message.achievement = @achievement
    if @message.save
      redirect_to user_achievement_path(current_user, @achievement)
    else
      render :new
    end
  end


private

  def message_params
    params.require(:message).permit(:text, :url, :photo)
  end


  def find_achievement
    @achievement = Achievement.find(params[:achievement_id])
  end


end
