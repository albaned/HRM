json.array!(@dergoemails) do |dergoemail|
  json.extract! dergoemail, :id, :subject, :body
  json.url dergoemail_url(dergoemail, format: :json)
end
