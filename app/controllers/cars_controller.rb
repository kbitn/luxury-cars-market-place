class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :update, :show, :destroy]

  def new
    @car = Car.new
  end
  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save!
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
    authorize @car
  end

  def edit
    @car
    authorize @car
  end

  def update
    @car.update(car_params)
    redirect_to @car
  end

  def index
    @cars = Car.geocoded

    if params[:query].present?
      @cars = Car.search_car(params[:query])
    end

    @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url('markernew.png')
      }
    end
  end

  def show
    @marker = { lat: @car.latitude, lng: @car.longitude, infoWindow: render_to_string(partial: "info_window", locals: { car: @car }), image_url: helpers.asset_url('markernew.png') }
    @bookings = Booking.all.select { |book| book.car_id == @car.id }
    usercars = Car.all.select { |car| car.user_id == @car.user.id }
    usercarsids = usercars.map { |car| car.id }
    @usersbookings = Booking.all.select { |book| usercarsids.include? book.car_id }
    @lasumabook = 0
    @lamediabook = 0
    @lasumauser = 0
    @lamediauser = 0
    @numreviewbook = 0
    @numreviewuser = 0
    unless @bookings.length == 0
      @bookings.each { |book| @lasumabook += book.review.rating if book.review }
      @bookings.each { |book| @numreviewbook += 1 if book.review }
      @numreviewbook.zero? ?  @lamediabook = 0 : @lamediabook = (@lasumabook / @numreviewbook).round
    end
    unless @usersbookings.length == 0
      @usersbookings.each { |book| @lasumauser += book.review.rating if book.review }
      @usersbookings.each { |book| @numreviewuser += 1 if book.review }
      @numreviewuser.zero? ? @lamediauser = 0 : @lamediauser = (@lasumauser / @numreviewuser).round
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :price_per_hour, :milage, :photo, :user_id, :plate_number, :car_model, :location)
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
