class JobsController < ApplicationController

def index
  @job = Job.all

end

def new
	@job = Job.new
end

def create
	params[:job][:user_id]= params[:user_id]
	@job = Job.new(job_params)
	if @job.save
		redirect_to user_job_path(@job)
	else
		render 'new'
	end
end

private
def job_params
	params.require(:job).permit(:date, :user_id)
end




end
