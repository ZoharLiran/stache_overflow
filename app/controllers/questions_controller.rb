class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    question = Question.new question_params
    if question.save
      redirect_to question_path question
    else
      render :new
    end
  end

  def show
    @question = Question.find params[:id]
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
    question.best_answer_id = params[:answer_id]
    redirect_to question_path question
  end

  private
  def question_params
    params.require(:question).permit(:content, :best_answer_id)
  end
end