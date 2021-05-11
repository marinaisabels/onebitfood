json.id restaurants.id
json.name restaurants.name
json.description restaurants.description
json.delivery_tax restaurants.delivery_tax
json.city restaurants.city
json.street restaurants.street
json.neighborhood restaurants.neighborhood
json.number restaurants.number
json.complement restaurants.complement
json.image_url polymorphic_url(restaurant.image) if restaruant.image.attached?

json.product_categories restaurant.product_categories do |product_category|
 json.partial! 'product_categories/product_category', product_category: product_category
end
