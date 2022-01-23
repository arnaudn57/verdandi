class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:alert] = "Message was successfully send"
    else
      flash[:alert] = "Message has not send"
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
