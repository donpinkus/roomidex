class MessagesController < ApplicationController
  def index
    @inbox = current_user.mailbox.inbox
  end

  def new
  end

  def show
    @conversation = Covnersations.find(params[:id])
  end

  def create
    receiver = User.find(params[:receiver_id])
    body = params[:body]
    subject = params[:subject]

    current_user.send_message(receiver, body, subject)
    redirect_to :index
  end

  def destroy
  end

  def reply
    conversation = parmas[:conversation_id]
    body = params[:body]

    alfa.reply_to_conversation(conversation, body)
  end
end
