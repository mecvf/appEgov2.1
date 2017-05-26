class Producto < ApplicationRecord
	has_many :menus, dependent: :destroy
	belongs_to :tipo, optional: true
	
	validates :nombre, presence: {message: "^Debe ingresar un nombre"}
	validates :descripcion, presence: {message: "^Debe ingresar una descripción"}
	validates :tipo_id, presence: {message: "^Debe seleccionar un tipo"}
	validates :precio, presence: {message: "^Debe indicar un precio"}
	
end
