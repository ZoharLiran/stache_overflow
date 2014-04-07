class QuestionsController < ApplicationController
  include UsersHelper

  def index
    @questions = Question.all.reverse
  end

  def new
    @question = Question.new
  end

  def create
    if signed_in?
      question = logged_user.questions.new question_params
    else
      question = Question.new question_params
    end

    if question.save
      redirect_to question_path question
    else
      render :new
    end
  end

  def show
    @question = Question.find params[:id]
    @right_user = get_right_user(@question)
  end

  def edit
    @question = Question.find params[:id]
  end

  def update
    question = Question.find params[:id]
    if question.update_attributes question_params
      redirect_to question_path question
    else
      render :edit
    end
  end

  def destroy
    question  = Question.find params[:id]
    question.destroy
    redirect_to root_path
  end

  def best_answer
    question = Question.find params[:question_id]
    question.update_attribute(:best_answer_id, params[:answer_id])
    redirect_to question_path question
  end

  def increase_vote
    question = Question.find params[:id].to_i
    question.vote_count += 1
    question.save
  end

  def decrease_vote
    question = Question.find params[:id].to_i
    question.vote_count = question.vote_count - 1
    question.save
  end

  private
  def question_params
    params.require(:question).permit(:title, :content, :best_answer_id)
  end
end