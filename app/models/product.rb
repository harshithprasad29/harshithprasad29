class Product < ApplicationRecord
	mount_uploaders :images, ImageUploader
end
