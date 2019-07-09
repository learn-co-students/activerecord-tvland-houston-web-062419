class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

	def full_name
		first_name + " " + last_name
	end 

	def list_roles
		#Character.where(actor_id: id)
		ar = []
		characters.each do |c|
			ar << c.name + " - " + c.show.name
		end
		ar
	end

end