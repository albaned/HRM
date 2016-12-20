json.array!(@gjuhas) do |gjuha|
  json.extract! gjuha, :id, :description
  json.url gjuha_url(gjuha, format: :json)
end
