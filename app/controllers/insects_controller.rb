class InsectsController < ApplicationController
  def new
    # @types = [""]
    @insect = Insect.new
  end

  def create
    @insect = Insect.new(insect_params)
    @insect.user = current_user
    @insect.save
  end

  private

  def insect_params
    params.require(:insect).permit(:name, :description, :type)
  end
end
