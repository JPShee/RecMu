class Message < ApplicationRecord
	belongs_to :sender, foreign_key: :sender_id, class_name: "User"
	belongs_to :recipient, foreign_key: :reply_id, class_name: "User"
end

