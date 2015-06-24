json.array!(@foods) do |food|
  json.extract! food, :id, :category_id_id, :name, :description, :barcode
  json.url food_url(food, format: :json)
end
