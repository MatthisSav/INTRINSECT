class InsectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def new
    @insect = Insect.new
    authorize @insect
  end

  def create
    @insect = Insect.new(insect_params)
    @insect.user = current_user
    @insect.save

    redirect_to insect_path(@insect)
    authorize @insect
  end

  def edit
    @insect = Insect.find(params[:id])
    authorize @insect
  end

  def update
    @insect = Insect.find(params[:id])
    @insect.update(insect_params)

    redirect_to insect_path(@insect)
    authorize @insect
  end

  def destroy
    @insect = Insect.find(params[:id])
    @insect.destroy

    redirect_to insects_path
    authorize @insect
  end

  def show
    @insect = Insect.find(params[:id])
    authorize @insect
  end

  def index
    @insects = Insect.all
    @insects = policy_scope(Insect).order(created_at: :desc)

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @insects.geocoded.map do |insect|
      {
        lat: insect.latitude,
        lng: insect.longitude,
        info_window: render_to_string(partial: "info_window", locals: { insect: insect }),
        image_url: helpers.asset_url("pap.png")
      }
    end
  end

  private

  def insect_params
    params.require(:insect).permit(:name, :description, :order, :address, photos: [])
  end
end
