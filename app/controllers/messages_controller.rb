class MessagesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      @message.save
    else
      redirect_to root_path
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:email, :name, :content, :subject)
  end
end
