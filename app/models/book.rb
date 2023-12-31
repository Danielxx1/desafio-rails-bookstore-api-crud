class Book < ApplicationRecord
  
  belongs_to :author

  validates :isbn, presence: true
end
