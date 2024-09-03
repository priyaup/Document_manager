class Employee < ApplicationRecord
  has_one :task
  has_many :documents
  has_many :employee_projects
  has_many :projects, through: :employee_projects

	
	
	def full_name
		"#{first_name} #{last_name}"
	end

	def name_with_email
		"#{full_name}(#{email})"
	end

end

