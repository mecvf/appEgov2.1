class Franja < ApplicationRecord

	
	validates :segunda_hasta, presence: true
	validates :primera_precio, presence: true
	validates :segunda_precio, presence: true
	validates :tercera_precio, presence: true



	validates :primera_hasta, presence: true,
		numericality: { less_than: :segunda_hasta, message: "Debe ser menor a la segunda franja sueldos" }
	validates :segunda_hasta, numericality: true, numericality: { greater_than: :primera_hasta }
	validates :primera_precio, numericality: true, numericality: { less_than: :segunda_precio }
  	validates :segunda_precio, numericality: true, numericality: { greater_than_or_equal: :primera_precio, less_than: :tercera_precio }
	validates :tercera_precio, numericality: true, numericality: { greater_than: :segunda_precio }
	



end
