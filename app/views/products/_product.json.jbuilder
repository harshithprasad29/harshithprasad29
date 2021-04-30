json.extract! product, :id, :name, :size, :description, :base_price, :tax, :images, :created_at, :updated_at
json.url product_url(product, format: :json)
