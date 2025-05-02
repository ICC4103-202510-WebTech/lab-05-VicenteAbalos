class User <ApplicationRecord
    has_many :messages
    has_many :messages, through: :chats
    validates :email, presence: {message: "You must write down your name"}, uniqueness: {message: "already taken by another user"}
    before_validation :normalize_name

    private
    def normalize_name
        self.first_name = first_name.strip.titleize
        self.last_name = last_name.strip.titleize
    end
end