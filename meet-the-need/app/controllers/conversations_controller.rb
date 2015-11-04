class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.all
  end

  def show

  end

  def new
    @customer = Customer.new
    if request.xhr?
      render 'message_form'
    else
      render 'message_form'
    end
  end

  def create
    p params
    @conversation = Conversation.new(set_conversation)
    if @conversation.save
      p "w" * 80
      p @conversation
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
