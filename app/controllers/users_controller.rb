class UsersController <ApplicationController
    before_action :set_user, only:[:show, :edit, :update]
    def index
        @users = User.all
    end
    def show
        @chats = Chat.all.select {|c| c.sender_id==@user.id}
        @chatss = Chat.all.select {|c| c.receiver_id==@user.id}
        @messages = @user.messages
    end

    def new
        @user = User.new
    end
    def create
        @user=User.new user_params
        if @user.save
            flash[:notice]="Guardado con éxito"
            redirect_to users_path
        else
            flash[:alert]="#{@user.errors.full_messages.join(", ")}"
            redirect_to new_user_path
        end
    end
    def edit
    end
    def update
        if @user.update user_params
            flash[:notice]="Editado con éxito"
            redirect_to users_path
        else
            flash[:alert]="#{@user.errors.full_messages.join(", ")}"
            redirect_to edit_user_path(@user)
        end
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email)
    end
    def set_user
        @user = User.find(params["id"])
    end
end