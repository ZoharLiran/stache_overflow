class CommentsController < ApplicationController
  def new
    # @comments = Comment.all
    @comment = Comment.new
  end

  def create
    question = Question.find(params[:comment][:question_id])
    @comment = question.comments.create(params[:comment])
    p params
    p "-"*50
    p @comment
    p @comment.id
    if @comment.save
      redirect_to question
    else
      render :new
    end
  end

  def destroy

  end

end