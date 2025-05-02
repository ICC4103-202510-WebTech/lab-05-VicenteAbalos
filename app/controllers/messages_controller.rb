class MessagesController < ApplicationController
    def index
        @messages = Message.all
    end
    def show
        @message = Message.find(params["id"])
    end
    def new
        @message = Message.new
    end
    def create
        @message = Message.new user_params
        if @message.save
            redirect_to messages_path
        else
            render :new
        end
    end
    
    private
    def user_params
        params.require(:message).permit(:body, :user_id, :chat_id)
    end
    
end