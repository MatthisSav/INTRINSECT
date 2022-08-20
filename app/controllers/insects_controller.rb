class InsectsController < ApplicationController
  def new
    @insect = Insect.new
  end

  def create
    @insect = Insect.new(insect_params)
    @insect.user = current_user
    @insect.save

    redirect_to insect_path(@insect)
  end

  def edit
    @insect = Insect.find(params[:id])
  end

  def update
    @insect = Insect.find(params[:id])
    @insect.update(insect_params)

    redirect_to insect_path(@insect)
  end

  def destroy
    @insect = Insect.find(params[:id])
    @insect.destroy

    redirect_to insect_path
  end

  def show
    @insect = Insect.find(params[:id])
  end

  def index
    @insects = Insect.all
  end

  private

  def insect_params
    params.require(:insect).permit(:name, :description, :order)
  end
end
