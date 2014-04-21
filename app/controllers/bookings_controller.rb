class BookingsController <ApplicationController

  def new
    @bookings = Booking.all
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(params.require(:booking).permit(:comment, :name, :start_time, :user_id, :email, :time))
    if @booking.save
      flash[:notice] = "Your booking has been submitted"
      if user_signed_in?
        UserMailer.booking_confirmation(@booking).deliver
      end
      redirect_to new_booking_path
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
