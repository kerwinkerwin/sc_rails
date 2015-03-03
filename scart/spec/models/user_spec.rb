require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) {User.create(email: "jojo@to.com" , password:"tester")}

  describe "User" do
      it "has a password" do
        expect(user.password).to_not be_nil
      end
    end
  describe "email" do
      before (:each) do
      @cat = User.create(email: "meow@meow.com", password:"mrmeow")
      @cat2 = User.create(email: "meow@meow.com", password:"heheh")
      end
      it "is unique" do
        expect(User.find_by(@cat2.id)).to be_falsy
      end
  end
end
