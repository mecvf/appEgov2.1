class Producto < ApplicationRecord
	
	belongs_to :tipo
	
	validates :nombre, presence: {message: "Debe ingresar un Nombre"}
	validates :descripcion, presence: {message: "Debe ingresar una descripción"}
	validates :tipo_id, presence: {message: "Debe seleccionar un tipo"}
	validates :precio, presence: {message: "Ver acá si lo hacemos que calcule solo el precio, no hay que ponerlo requerido..."}, numericality: true
	
end
