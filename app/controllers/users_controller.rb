class UsersController <ApplicationController
	def index
	  @users = User.all
	end

	def show
		@user = User.find(params[:id])
		@profile = Profile.find_by(user_id: params[:id])
		@jobs = @user.jobs
	end
end
