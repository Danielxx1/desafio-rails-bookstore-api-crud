class Author < ApplicationRecord
    has_many :books

    validates :cpf, presence: true, format: { with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/, message: "formato inválido o cpf deve possuir esse formato 999.999.999-99" }
end
