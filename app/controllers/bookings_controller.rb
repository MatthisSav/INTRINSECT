class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @insect = Insect.find(params[:insect_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.insect = Insect.find(params[:insect_id])
    @booking.save

    redirect_to booking_path(@booking)
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    redirect_to booking_path(@booking)
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to bookings_path
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def index
    @bookings = Booking.all
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_start_date, :booking_end_date)
  end
end
