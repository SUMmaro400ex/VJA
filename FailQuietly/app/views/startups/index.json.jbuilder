json.array!(@startups) do |startup|
  json.extract! startup, :id, :name, :description, :price, :url
  json.url startup_url(startup, format: :json)
end
