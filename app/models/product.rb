class Product < ApplicationRecord
	SIZE = ['XS', 'S', 'M', 'L', 'XL', 'XXL']
	mount_uploaders :images, ImageUploader
	validates :name, :size, :description, :base_price, :images, presence: true
	validates :tax, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100 }
	validates :base_price, :numericality => { :greater_than_or_equal_to => 0}

	before_create do
		self.total_price = (self.base_price * self.tax.to_f)/100
		self.expiry_on = self.created_at+30.days
  end

end

