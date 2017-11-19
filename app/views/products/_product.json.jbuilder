json.extract! product, :id, :image_url, :title, :description, :price, :brand, :created_at, :updated_at
json.url product_url(product, format: :json)
