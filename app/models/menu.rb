class Menu < ApplicationRecord
	has_many :tiene_productos
	has_many :productos, through: :tiene_productos
	after_create :save_productos
	def productos=(value)
		@productos = value
	end

	def save_productos
		@productos.each do |producto_id|
		TieneProducto.create(producto_id: producto_id, menu_id: self.id)
		end
	end
end
