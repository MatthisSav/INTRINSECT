class InsectsController < ApplicationController

  def index
    @insects = Insect.all
  end

  def show
    @insect = Insect.find(params[:id])
  end


end
