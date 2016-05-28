require 'rails_helper'

describe User, type: :model do

  describe "creation" do

    it "has a valid class" do
      expect(described_class).to_not be_nil
    end

    context "with invalid attributes" do

      it "should not be valid" do
        @user = build(:user, username: "", firstname: "", lastname: "")
        expect(@user.save).to be false
      end

      it "should not be valid with short firstname" do
        @user = build(:user, firstname: "H")
        expect(@user.save).to be false
      end
      
       it "should not be valid with short username" do
        @user = build(:user, username: "H")
        expect(@user.save).to be false
      end
      
    end

  end

end


