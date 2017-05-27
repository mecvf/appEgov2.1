class Menu < ApplicationRecord
	belongs_to :producto, optional: true
end
