json.array!(@chocolates) do |chocolate|
  json.extract! chocolate, :id, :name, :photo_url
  json.url chocolate_url(chocolate, format: :json)
end
