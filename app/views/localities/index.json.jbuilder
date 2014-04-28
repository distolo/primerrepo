json.array!(@localities) do |locality|
  json.extract! locality, :id, :province_id, :name, :postal_code
  json.url locality_url(locality, format: :json)
end
