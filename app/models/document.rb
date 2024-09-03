class Document < ApplicationRecord

  DOC_TYPES = ['marksheet', 'Photo ID', 'Address Proofs', 'Personal ID' ,'Others'].freeze

  belongs_to :employee
  validates :name, :doc_type, presence: true
end
