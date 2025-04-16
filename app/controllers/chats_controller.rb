class ChatsController < ApplicationController
    def index
        @chats = Chat.all
    end
    def show
        @chat = Chat.find_by(params["id"])
    end
end