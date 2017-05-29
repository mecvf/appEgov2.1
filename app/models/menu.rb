class Menu < ApplicationRecord
	#validates :fecha, uniqueness: true
	has_many :tiene_productos
	has_many :productos, through: :tiene_productos
	after_create :save_productos
	after_update :edit_productos
	before_destroy :destroy_productos

	
	def productos=(value)
		@productos = value
	end

	def save_productos
		@productos.each do |producto_id|
		TieneProducto.create(producto_id: producto_id, menu_id: self.id)
		end
	end

	def edit_productos
		
		TieneProducto.where(menu_id: self.id).destroy_all
		
		@productos.each do |producto_id|
			
		#raise @productos.to_yaml
		
		TieneProducto.create(producto_id: producto_id, menu_id: self.id)
		
		end
	end

	def destroy_productos
		TieneProducto.where(menu_id:self.id).destroy_all
	end
end
