class Project < ApplicationRecord
has_many :employee_projects
has_many :employees, through: :employee_projects

validates :name, :description, presence: true
end
