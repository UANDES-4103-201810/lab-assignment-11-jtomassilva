class Message < ApplicationRecord
  	belongs_to :user
	validates :user, presence: true
	validates :date, presence: true
	validates :content, presence: true
	
end
