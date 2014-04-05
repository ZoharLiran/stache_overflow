class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def create
    question = Question.find(params[:answer][:question_id])
    @answer = question.answers.create(params[:answer])
    if @answer.save
      redirect_to question
    else
      render :new
    end
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update_attributes params[:answer]
      redirect_to answer_path(@answer)
    else
      render :edit
    end

  end

  def destroy
    answer = Answer.find params[:id]
    answer.destroy
    redirect_to root_path
  end

end
