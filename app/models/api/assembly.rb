class Api::Assembly < ApplicationRecord
  belongs_to :part
  belongs_to :book
end
