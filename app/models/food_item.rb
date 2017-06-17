class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  has_many :orders

  def image_url_or_default
		image_url.presence || "loremflickr.com/320/240/#{name}"

		if !image_url.nil? && !image_url.blank?
			image_url
		else
			"loremflickr.com/320/240/#{name.gsub('', '')}"
	end
end
end
