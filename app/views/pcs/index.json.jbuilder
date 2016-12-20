json.array!(@pcs) do |pc|
  json.extract! pc, :id, :description
  json.url pc_url(pc, format: :json)
end
