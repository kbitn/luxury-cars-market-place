class PagesController < ApplicationController

  def home
    @cars = Car.all
  end

  def dashboard
    @user = current_user
    @cars = Car.all.select { |car| car.user_id == @user.id }
    @rentals = Booking.all.select { |book| book.user_id == @user.id }
  end
end
