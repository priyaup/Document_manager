class Task < ApplicationRecord
  belongs_to :employee

  validates :title,  presence: true
  validates :title, uniqueness: true
end
