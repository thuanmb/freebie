json.array!(@post_items) do |post_item|
  json.extract! post_item, :id, :category, :name, :description, :quantity
  json.url post_item_url(post_item, format: :json)
end
