class ChatsController < ApplicationController
    before_action :set_chat, only:[:show, :edit, :update]
    def index
        @chats = Chat.all
    end
    def show
        @sender=@chat.sender
        @receiver=@chat.receiver
        @messages=@chat.messages
    end
    def new
        @chat = Chat.new
    end
    def create
        @chat = Chat.new chat_params
        if @chat.save
            flash[:notice]="Guardado con éxito"
            redirect_to chats_path
        else
            flash[:alert]="#{@chat.errors.full_messages.join(", ")}"
            redirect_to new_chat_path
        end
    end
    def edit
    end
    def update
        if @chat.update chat_params
            flash[:notice]="Editado con éxito"
            redirect_to chats_path
        else
            flash[:alert]="#{@chat.errors.full_messages.join(", ")}"
            redirect_to edit_chat_path(@chat)
        end
    end

    private
    def chat_params
        params.require(:chat).permit(:sender_id, :receiver_id)
    end
    def set_chat
        @chat = Chat.find(params["id"])
    end
end