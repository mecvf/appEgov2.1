class Producto < ApplicationRecord
	
	belongs_to :tipo, optional: true
	
	validates :nombre, presence: {message: "^Debe ingresar un Nombre"}
	validates :descripcion, presence: {message: "^Debe ingresar una descripción"}
	validates :tipo_id, presence: {message: "^Debe seleccionar un tipo"}
	validates :precio, presence: {message: "^Debe indicar un precio"}
	
end
