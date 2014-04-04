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
    @qcomment = Qcomment.new
  end

  def create
    @qcomment = Qcomment.new(params[:qcomment])
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