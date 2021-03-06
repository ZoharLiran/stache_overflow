require 'spec_helper'

describe QuestionsController do
  let(:test_question) { FactoryGirl.create :question }
  let(:test_answer) { FactoryGirl.create :answer }

  context "#show" do
    it "shows the question page" do
      get :show, :id => test_question.id
      expect(response).to be_success
    end
  end

  context "#create" do
    it "creates a new question" do
      expect {
        post :create, :question => { :content => "hello" }
      }.to change{ Question.count }.by(1)
    end
  end

  context "#update" do
    it "updates a question" do
      update_str = "this is a test update"
      put :update, :id => test_question, :question => { :content => update_str }
      expect(test_question.reload.content).to eq(update_str)
    end
  end

  context "#delete" do
    it "deletes a question" do
      question_delete = FactoryGirl.create :question
      expect {
        delete :destroy, :id => question_delete
      }.to change { Question.count }.by(-1)
    end
  end

  context "#best_answer" do
    it "stores the best answer's id" do
      expect {
        test_question.best_answer_id = test_answer.id
        test_question.save!
      }.to change { test_question.reload.best_answer_id }.to eq(test_answer.id)
    end
  end
end
