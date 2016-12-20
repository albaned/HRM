json.array!(@punetoris) do |punetori|
  json.extract! punetori, :id, :emri, :mbiemri, :email
  json.url punetori_url(punetori, format: :json)
end
