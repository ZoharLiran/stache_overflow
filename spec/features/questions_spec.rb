require 'spec_helper'

describe "Questions" do
  let!(:question) { FactoryGirl.create :question }

  context "index" do
    it "displays all the questions" do
      visit root_path
      expect(page).to have_content question.content
    end
  end

  context "new" do
    it "gets a new question form"
  end

  context "create" do
    it "creates a new question"
  end

  context "show" do
    it "shows a question page"
  end

  context "edit" do
    it "gets the edit form"
  end

  context "update" do
    it "updates the questions attributes"
  end

  context "delete" do
    it "deletes the question"
  end
end
