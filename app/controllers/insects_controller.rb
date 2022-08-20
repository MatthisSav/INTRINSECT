class InsectsController < ApplicationController

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

  private

  def insect_params
    params.require(:insect).permit(:name, :description, :type)
  end
end
