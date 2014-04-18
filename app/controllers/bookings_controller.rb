class BookingsController <ApplicationController

  def index
    @bookings = Booking.all
  end

  def contact
    @booking = Booking.new
  end

  def comment
    @booking = Booking.new(params.require(:booking).permit(:comment, :email, :name))
    UserMailer.send_comment(@booking).deliver
    redirect_to "/"
  end

end
