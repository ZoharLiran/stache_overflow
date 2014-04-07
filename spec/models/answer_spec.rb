require 'spec_helper'

describe Answer do
  it "can create a new answer" do
    expect(!!FactoryGirl.create(:answer)).to eq(true)
  end
end
