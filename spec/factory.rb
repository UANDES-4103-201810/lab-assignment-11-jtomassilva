FactoryBot.define do
	factory :user do
		username "Userame"
		email "username@test.com" 
		password "123456"
	end

	factory :message do
		user_id 1
		date "2017-12-12" 
		content "This is a message."
	end
end

