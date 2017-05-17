class Bebida < ApplicationRecord
	validates :nombre, presence:true
	validates :tamanio, presence:true
	validates :precio, presence:true, numericality:true
end
