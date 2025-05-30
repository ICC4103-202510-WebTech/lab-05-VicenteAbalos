class User <ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :messages
    has_many :chats
    has_many :messagesc, through: :chats, source: :messages
    validates :first_name, presence: true
    validates :email, presence: {message: "You must write down your mail"}, uniqueness: {message: "already taken by another user"}
    before_validation :normalize_name

    private
    def normalize_name
        self.first_name = first_name.strip.titleize
        self.last_name = last_name.strip.titleize
    end
end