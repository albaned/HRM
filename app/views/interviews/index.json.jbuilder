json.array!(@interviews) do |interview|
  json.extract! interview, :id, :pozi_id, :emri, :mbiemri, :status_id, :ditelindja, :vendlindja, :tel, :email
  json.url interview_url(interview, format: :json)
end
