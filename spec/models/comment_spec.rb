require 'spec_helper'

describe Comment do
  it "can create a new comment" do
    expect(!!FactoryGirl.create(:comment)).to eq(true)
  end
end
