class User <ApplicationRecord
    has_many :messages
    has_many :messages, through: :chats
    validates :email, presence: true, uniqueness: true
    before_validation :normalize_name

    private
    def normalize_name
        self.first_name = first_name.strip.titleize
        self.last_name = last_name.strip.titleize
    end
    
    def email_check

    end

end