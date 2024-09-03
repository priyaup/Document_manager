class EmployeeProject < ApplicationRecord
  belongs_to :employee
  belongs_to :project

  validates :submission_date, presence: true
end
