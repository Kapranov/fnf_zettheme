json.array!(@companies) do |company|
  json.extract! company, :id, :name, :description, :status, :representatives, :logo, :avatar, :attachment
  json.url company_url(company, format: :json)
end
