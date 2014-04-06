require 'spec_helper'

describe AnswersController do

  # describe "#index" do
  #   let!(:myquestion){ FactoryGirl.create :question }
  #   it "shows all the answers" do
  #     get :index, :question_id => myquestion.id
  #     expect(response).to be_ok
  #   end
  # end

  # describe "#show" do
  #   let!(:myanswer){ FactoryGirl.create :answer }
  #   it "assigns @answer based on the answer param" do
  #     get :show, :id => myanswer.id, :question_id => myanswer.question_id
  #     expect(assigns(:answer)).to eq myanswer
  #   end
  # end

  context "#create" do
    # let!(:myanswer){ FactoryGirl.create :answer }

    it "creates a new answer" do
      # expect {
      # p "-"*50
        # p Answer.all.count
        # post :create, :answer => { :content => "hello" }
        # p Answer.all.count
      # # }.to change{ Answer.all.count }.by(1)
    end
  end

  # describe "#update" do
  #   let(!:myanswer){ FactoryGirl.create :answer }
  #   it "updates an existing answer" do
  #     expect {
  #       put :update, :id => myanswer.id,
  #                    :answer => { :content => 'Change is good' }
  #     }.to change { myanswer.reload.content }.to('Change is good')
  #   end
  # end
end
