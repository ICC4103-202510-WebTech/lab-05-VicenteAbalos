class MessagesController < ApplicationController
    before_action :set_message, only:[:show, :edit, :update]
    def index
        @messages = Message.all
    end
    def show
        @sender=User.find(@message.user_id)
        @chat=Chat.find(@message.chat_id)
        @chatsender=User.find(@chat.sender_id)
        @chatreceiver=User.find(@chat.receiver_id)
    end
    def new
        @message = Message.new
    end
    def create
        @message = Message.new message_params
        if @message.save
            flash[:notice]="Guardado con éxito"
            redirect_to messages_path
        else
            flash[:alert]="#{@message.errors.full_messages.join(", ")}"
            redirect_to new_message_path
        end
    end
    def edit
    end
    def update
        if @message.update message_params
            flash[:notice]="Editado con éxito"
            redirect_to messages_path
        else
            flash[:alert]="#{@message.errors.full_messages.join(", ")}"
            redirect_to edit_message_path(@message)
        end
    end
    private
    def message_params
        params.require(:message).permit(:body, :user_id, :chat_id)
    end
    def set_message
        @message = Message.find(params["id"])
    end
end