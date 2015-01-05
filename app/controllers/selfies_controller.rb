class SelfiesController < ApplicationController
  def index
    @selfies = Selfy.all
  end
end