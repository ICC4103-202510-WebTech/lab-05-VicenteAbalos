class Chat <ApplicationRecord
    has_many :messages
    belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
    belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'
    validates :sender_id, presence: true
    validates :receiver_id, presence: true, comparison: {other_than: :sender_id, message: "must be different from sender"}
    scope :member, -> (user_id){ where(sender_id: user_id).or(where(receiver_id: user_id))}
    scope :senders, -> (user_id){select(:sender_id).where(receiver_id: user_id)}

    def return_name(user)
        if sender_id==user.id
            name= User.find(receiver_id).first_name+" "+User.find(receiver_id).last_name
        else 
            if receiver_id==user.id
                name= User.find(sender_id).first_name+" "+User.find(sender_id).last_name
            end
        end
        return name
    end
end