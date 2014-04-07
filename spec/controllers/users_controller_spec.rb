require 'spec_helper'

describe UsersController do
  let!(:test_user) { FactoryGirl.create :user }

  context "#create" do
    it "creates a new user" do
      expect {
        post :create, :user => test_user.attributes
      }.to change{ User.count }.by(1)
    end
  end

  context "#update" do
    it "updates a user" do
      new_name = "Conan O'Brien"
      put :update, :id => test_user, :user => { :name => new_name }
      expect(test_user.reload.name).to eq(new_name)
    end
  end
end