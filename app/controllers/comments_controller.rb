class CommentsController < ApplicationController
  def new
    # @comments = Comment.all
    @comment = Comment.new
  end

  def create
    if params[:comment][:question_id] != ""
      question = Question.find(params[:comment][:question_id])
      @comment = question.comments.create(params[:comment])
      if @comment.save
        redirect_to question
      else
        render :new
      end
    elsif params[:comment][:answer_id] != ""
      answer = Answer.find(params[:comment][:answer_id])
      @comment = answer.comments.create(params[:comment])
      if @comment.save
        redirect_to answer
      else
        render :new
      end
    end
  end

  def destroy

  end

  def show
    @comment = Comment.find(params[:id])
  end

end