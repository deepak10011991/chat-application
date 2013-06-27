class MessagesController < ApplicationController
  def index
    sent_messages = current_user.messages
    received_messages = Message.where(:target_id => current_user.id)
    @messages = received_messages + sent_messages
    @users = User.where('email <> ?', current_user.email)
  end

  def create
    @message = current_user.messages.create!(params[:message])
  end
end
