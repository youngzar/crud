json.array!(@musicians) do |musician|
  json.extract! musician, :id, :songs, :monthly_listeners, :fans
  json.url musician_url(musician, format: :json)
end
