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


  private

  def selfy_params
    params.require(:selfy).permit(:body)
  end

end