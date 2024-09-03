class Office < ApplicationRecord
	validates :office_name, :number_of_employees, :branch, presence: true
end
