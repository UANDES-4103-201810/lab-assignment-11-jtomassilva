require 'rails_helper'

RSpec.describe User, type: :user do

	it "test new user creation with valid attributes to be valid" do
		@user = build(:user)
		expect(@user).to be_valid
	end

	it "test new user creation with not unique username not to be valid" do
		@user = create(:user)
		@user2 = build(:user, username: "Username")
		expect(@user2).to_not be_valid
	end

	it "test new user creation with not unique email not to be valid" do
		@user = create(:user)
		@user2 = build(:user, email: "MyString")
		expect(@user2).to_not be_valid
	end

	it "test new user creation with longer than 20 characters username not to be valid" do
		@user = build(:user, username: "123456789123456789123")
		expect(@user).to_not be_valid
	end

end

