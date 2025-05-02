class Message <ApplicationRecord
    belongs_to :user
    belongs_to :chat
    validates :body, presence: true
    validates :user_id, presence: true
    validates :chat_id, presence: true
end