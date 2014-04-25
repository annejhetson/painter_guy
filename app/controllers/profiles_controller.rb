class ProfilesController <ApplicationController

	def index
		@user = User.find(params[:user_id])
		@bookings = Booking.where("user_id = #{@user.id} and start_time > Time")
		@oldjobs = Booking.where("user_id = #{@user.id} and start_time < Time")
		@profile = Profile.find_by(user_id: params[:user_id])
	end
	def new
		@profile = Profile.new
	end

	def create
		@profile = Profile.new(params_profile)
		if @profile.save
			redirect_to user_profiles_path
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:user_id])
		@profile = Profile.find(params[:id])
	end

	def update

		@profile = Profile.find(params[:id])
		if @profile.update(params_profile)
		  redirect_to user_profiles_path
		else 
		  render 'edit'
		end
	end

	def destroy
		@profile = Profile.find(params[:id])
		@profile.destroy
		redirect_to user_profiles_path
	end

	private
	def params_profile
		params.require(:profile).permit(:street, :city, :state, :zip, :user_id)
	end
end