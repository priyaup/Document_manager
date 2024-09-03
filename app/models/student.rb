class Student < ApplicationRecord
  # self.primary_key = :email

	validates :first_name, :last_name, :email, presence: { message: "must be given please" } 

	# def id= value
	#     _write_attribute("id", value)
	#   end

	#   def id
	#     _read_attribute("id")
	#   end
end
