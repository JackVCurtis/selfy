class SelfiesController < ApplicationController
  def index
    @selfies = Selfy.all
  end

  def show
    @selfy = Selfy.find(params[:id])
  end

  def new
    @selfy = Selfy.new
  end

  def create
    @selfy = Selfy.new(selfy_params)

    if @selfy.save
      redirect_to "/"
    else
      render :new
    end
  end

  private

  def selfy_params
    params.require(:selfy).permit(:body)
  end

end