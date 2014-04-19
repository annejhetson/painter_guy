class ProfilesController <ApplicationController
	
	def new
		@profile = Profile.new
		@user = User.find(params[:user_id])
	end

	def create
		@profile = Profile.new(params_profile)
		if @profile.save
			redirect_to user_profiles_path
		else
			render "new.html.erb"
		end
	end

	private
	def params_profile
		params.require(:profile).permit(:street, :city, :state, :zip, :user_id)
	end
end