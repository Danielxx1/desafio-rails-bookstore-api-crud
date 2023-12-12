class Supplier < ApplicationRecord
    has_one :account, dependent: :destroy
    has_many :Parts, dependent: :destroy
end
