require '../spec_helper'

describe User do
  it "can create a new user" do
    expect(!!FactoryGirl.create(:user)).to eq(true)
  end
end
