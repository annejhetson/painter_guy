class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :jobs
  has_many :bookings
  has_one :profile

  after_create :send_confirmation_email

  private
    def send_confirmation_email
      UserMailer.signup_confirmation(self).deliver
    end

end
