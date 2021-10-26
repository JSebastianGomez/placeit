class Reserva < ApplicationRecord
  belongs_to :funcion

  validates :persona, presence: true
  validates :celular, presence: true, length: { minimum: 10 }
end
