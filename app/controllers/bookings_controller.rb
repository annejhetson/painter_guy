class BookingsController <ApplicationController

  def index
    @bookings = Booking.all
    @booking = Booking.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params.require(:booking).permit(:comment, :name, :start_time, :user_id, :email, :time))
    if @booking.save
      flash[:notice] = "Your booking has been submitted"
      UserMailer.booking_confirmation(@booking).deliver
      redirect_to bookings_path
    else
      render new_booking_path
    end
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
