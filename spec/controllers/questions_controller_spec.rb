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

  context '#best_answer' do
    it "stores the best answer's id" do
      get :show, :id => test_question.id
      expect {
        put :update, :id => test_question.id, :best_answer_id => test_answer.id
      }.to change { test_question.reload.best_answer_id }.to eq(test_answer.id)
    end
  end
end
