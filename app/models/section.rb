class Section < ApplicationRecord
	has_many :food_items, dependent: :destroy
	validates :name, :price, presence: true
	def to_s
		name
	end
	
end
