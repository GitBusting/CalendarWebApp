class Appointment < ApplicationRecord
  belongs_to :user, optional: true
  #attr_accessible :name, :start_date

  def self.search(search)
  	if search
  		where('name LIKE ?', "%#{search}%")
  	else
  		all
  	end
  end
end
