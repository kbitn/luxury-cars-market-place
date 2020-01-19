class BookingsController < ApplicationController
  def new
    @start_time = params["booking"]["starts_at"]
    @end_time = params["booking"]["ends_at"]
    @start_time_hours = DateTime.parse(params["booking"]["starts_at"]).strftime('%s').to_f / 3600
    @end_time_hours = DateTime.parse(params["booking"]["ends_at"]).strftime('%s').to_f / 3600
    @car = Car.find(params[:car_id])
    @result = ((@end_time_hours - @start_time_hours) * @car.price_per_hour).round
    @marker = { lat: @car.latitude, lng: @car.longitude, infoWindow: render_to_string(partial: "../views/cars/info_window", locals: { car: @car }), image_url: helpers.asset_url('markernew.png') }
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user_id = current_user.id
    @booking.status = "accepted"
    @booking.save!
    redirect_to car_path(@car)
  end

  def index
  end

  private

  def booking_params
    params.permit(:renting_time, :starts_at, :ends_at)
  end
end
