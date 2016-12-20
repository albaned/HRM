json.array!(@pozis) do |pozi|
  json.extract! pozi, :id, :description
  json.url pozi_url(pozi, format: :json)
end
