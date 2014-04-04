class AcommentsController < ApplicationController
  def index
    @acomments = Acomment.all
  end

  def show
    @acomment = Acomment.find(params[:id])
  end

  def edit
    @acomment = Acomment.find(params[:id])
  end

  def new
    @acomment = Acomment.new
  end

  def create
    answer = Answer.find(params[:acomment][:answer_id])
    @acomment = answer.acomments.create(params[:acomment])
    if @acomment.save
      redirect_to acomment_path(@acomment)
    else
      render :new
    end
  end

  def update
    @acomment = Acomment.find(params[:id])
    if @acomment.update_attributes params[:acomment]
      redirect_to acomment_path(@acomment)
    else
      render :edit
    end

  end

  def destroy
    acomment = Acomment.find params[:id]
    acomment.destroy
    redirect_to root_path
  end

end
