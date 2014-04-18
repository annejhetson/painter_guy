class JobsController < ApplicationController

def index
  @job = Job.all

end

def contact
  render "contact.html.erb"
end

end
