class User < ApplicationRecord
	has_many :messages
	validates :username, uniqueness: true, length: { in: 4..20 }, presence: true
  	validates :email, uniqueness: true, presence: true
  	validates :password, length: { in: 6..20 }, presence: true
end
