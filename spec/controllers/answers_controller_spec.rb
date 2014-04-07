require 'spec_helper'

describe AnswersController do
  let!(:test_question) { FactoryGirl.create :question }
  let!(:test_answer) { FactoryGirl.create :answer }

  context "#create" do
    it "creates a new answer" do
      expect {
        post :create, :question_id => test_question, :answer => test_answer.attributes
      }.to change{ Answer.count }.by(1)
    end
  end

  context "#delete" do
    it "deletes an answer" do
      question_delete = FactoryGirl.create :question
      answer_delete = FactoryGirl.create :answer
      expect {
        delete :destroy, :id => answer_delete, :question_id => question_delete
      }.to change { Answer.count }.by(-1)
    end
  end
end
