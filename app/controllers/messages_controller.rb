class MessagesController < ApplicationController
  def index
  	@messages = Message.all
  end

  def create
  	@message = Message.create message_params
  	redirect_to messages_index_path
  end

  def new
  	@message = Message.new message_params
  	@message.save!
  	redirect_to messages_index_path
  end

  def message_params
  	params.require(:message).permit(:body, :from)
  end
  
end