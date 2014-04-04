class QcommentsController < ApplicationController
  def index
    @qcomments = Qcomment.all
  end

  def show
    @qcomment = Qcomment.find(params[:id])
  end

  def edit
    @qcomment = Qcomment.find(params[:id])
  end

  def new
    question = Question.find(params[:question_id])
    @qcomment = question.qcomments.new
    puts "*"*80
    p "Question ID: #{question.id}"
    p params
    p params[:question_id]
    puts "*"*80
  end

  def create
    # question = Question.find(params[:question_id])
    @qcomment = Qcomment.new(params[:qcomment])
    puts "*"*80
    # p question
    p params[:question_id]
    p params
    puts "*"*80
    if @qcomment.save
      redirect_to qcomment_path(@qcomment)
    else
      render :new
    end
  end

  def update
    @qcomment = Qcomment.find(params[:id])
    if @qcomment.update_attributes params[:qcomment]
      redirect_to qcomment_path(@qcomment)
    else
      render :edit
    end

  end

  def destroy
    qcomment = Qcomment.find params[:id]
    qcomment.destroy
    redirect_to root_path
  end

end