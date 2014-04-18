class JobsController < ApplicationController

def index
  @job = Job.all

end



end
