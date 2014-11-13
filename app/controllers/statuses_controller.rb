class StatusesController < ApplicationController

  def index
    @status = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    status_params = params.require(:status).permit(:user, :post, :likes)
    @status = Status.new(status_params)
    if
      @status.save
      flash[:notice] = "Status was created."
      redirect_to status_path(@status)
    else
      render :new
    end
  end

  def show
    @status = Status.find(params[:id])
  end

  def edit
    @status = Status.find(params[:id])
  end

  def update
    status_params = params.require(:status).permit(:user, :post, :likes)
    @status = Status.find(params[:id])
    @status.update(status_params)
    flash[:notice] = "Product was updated successfully."
    redirect_to status_path
  end


end
