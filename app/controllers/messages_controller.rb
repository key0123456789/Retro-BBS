class MessagesController < ApplicationController

  def index
    @message = Message.new
    @messages = Message.kaminari_page(params[:page]).order(created_at: 'DESC').per(5)
    # @messages_pages = @messages.page(params[:page])
  end

  # def new

  # end

  def create
    @message =Message.new(message_params)
    @message.save
    render "index"
  end

  def destroy

  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :title, :text, :color, :url, :password_digest)
  end

end
