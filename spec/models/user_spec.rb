require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) { User.create!(username: "Sven", email: "svenlarson1098@gmail.com", password: "password") }

  it { is_expected.to have_many(:lists) }
  it { is_expected.to have_many(:items) }
  describe "attributes" do
    it "has a name attribute" do
      expect(user).to have_attributes(username: "Sven", email: "svenlarson1098@gmail.com", password: "password"))
    end
  end
end
