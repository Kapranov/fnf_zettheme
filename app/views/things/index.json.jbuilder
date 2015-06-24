json.array!(@things) do |thing|
  json.extract! thing, :id, :category_id_id, :name, :description, :barcode
  json.url thing_url(thing, format: :json)
end
