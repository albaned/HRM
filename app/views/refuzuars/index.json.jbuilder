json.array!(@refuzuars) do |refuzuar|
  json.extract! refuzuar, :id, :pozi_id, :emri, :mbiemri, :status_id, :ditelindja, :vendlindja, :tel, :email
  json.url refuzuar_url(refuzuar, format: :json)
end
