class Pelicula < ApplicationRecord
  has_many :funcions, dependent: :destroy

  validates :nombre, presence: true
  validates :sinopsis, presence: true
  validates :urlimagen, presence: true
end
