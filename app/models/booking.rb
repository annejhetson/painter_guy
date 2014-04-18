class Booking <ActiveRecord::Base
belongs_to :user

validates :comment, presence: true
validates :name, presence: true

end
