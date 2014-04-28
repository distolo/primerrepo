json.array!(@companies) do |company|
  json.extract! company, :id, :adress_id, :name
  json.url company_url(company, format: :json)
end
