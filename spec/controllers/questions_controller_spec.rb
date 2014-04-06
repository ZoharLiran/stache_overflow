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
      expect(Question.find(test_question.id).content).to eq(update_str)
    end
  end

  context "#best_answer" do
    it "stores the best answer's id" do
      expect {
        test_question.best_answer_id = test_answer.id
        test_question.save!
      }.to change { Question.find(test_question.id).best_answer_id }.to eq(test_answer.id)
    end
  end
end
