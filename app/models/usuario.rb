class Usuario < ApplicationRecord

	belongs_to :empresa, optional: true



	validates :ci, presence: {message: "^Debe ingresar una Cedula de Identidad valida"}
	validates :ci, uniqueness: {message: "^Esa CI ya se encuentra registrada "}
	validates :ci, length: { in: 7..8, message: "^Debe ingresar 7 u 8 digitos para la CI, sin puntos ni guiones"}
	validates :nombres, presence: {message: "^Debe ingresar nombres"}
	validates :apellidos, presence: {message: "^Debe ingresar apellidos"}
	validates :empresa_id, presence: {message: "^Debe seleccionar una empresa"}
end
