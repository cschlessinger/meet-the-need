class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.all
  end

  def new
    @conversation = Conversation.new
  end

  def create
    @conversation = Conversation.new(set_conversation)
    if @conversation.save
      redirect_to :back
    else
      redirect_to :back
    end
    # params is the customer id
    # render json: {message: 'hi'}
  end

  private

  def set_conversation
    params.require(:conversation).permit(:body, :developer_id, :customer_id, :initiated_by)
  end
end
