json.array!(@qytetets) do |qytetet|
  json.extract! qytetet, :id, :description
  json.url qytetet_url(qytetet, format: :json)
end
