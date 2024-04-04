require 'rails_helper'
require './app/models/user.rb'


RSpec.describe User, type: :model do
  describe 'Validations' do
    before(:each) do
      @user = User.create({
        first_name: "neeha",
        last_name: "baral",
        email: "nbar@gmail.com",
        password:"password",
        password_confirmation: "password"})
    end

    it "should be valid with required minimum password length and valid email" do
      expect(@user).to be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    before(:each) do
      @user = User.create({
        first_name: "neeha",
        last_name: "baral",
        email: "nbar@gmail.com",
        password:"password",
        password_confirmation: "password"})
    end

    it "should not be valid if password is less than 5 letters" do
      @user.password = "123"
      @user.password_confirmation = "123"
      expect(@user).to_not be_valid
    end

    it "should be valid if there is any empty character before the email" do
      @user.email = " nbar@gmail.com"
      expect(@user).to be_valid
    end

    it "should be valid if there is any empty character after the email" do
      @user.email = "nbar@gmail.com "
      expect(@user).to be_valid
    end

    it "should be valid regardless of incorrect upper/lower case characters" do
      @user.email = "NBar@gmail.com"
      expect(@user).to be_valid
    end
  end

end