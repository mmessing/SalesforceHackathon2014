json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :description, :latitude, :longitude
  json.url listing_url(listing, format: :json)
end
