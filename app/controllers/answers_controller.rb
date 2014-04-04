class AnswersController < ApplicationController
  def edit
  end

  def index
    @answers = Answer.all
  end

  def show
  end

  def new
  end
end
