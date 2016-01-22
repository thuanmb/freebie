json.array!(@categories) do |category|
  json.extract! category, :id, :name, :fa_icon, :color, :img_url
  json.url category_url(category, format: :json)
end
