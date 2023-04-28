require 'rails_helper'

RSpec.describe "Users", type: :routing do
  describe "registration" do
    it "should not be possible to sign up" do
      expect(get("/users/sign_up")).not_to be_routable
    end
  end
end
