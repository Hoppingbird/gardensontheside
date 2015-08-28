json.array!(@zips) do |zip|
  json.extract! zip, :id, :zip_code, :grow_zone
  json.url zip_url(zip, format: :json)
end
