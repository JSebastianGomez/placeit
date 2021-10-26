class Funcion < ApplicationRecord
  validates_with FuncionValidator
  belongs_to :pelicula
  has_many :reservas

end
