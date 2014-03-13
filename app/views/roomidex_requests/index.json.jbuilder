json.array!(@roomidex_requests) do |roomidex_request|
  json.extract! roomidex_request, :id, :user_id, :receiver_id, :accepted, :ignored
  json.url roomidex_request_url(roomidex_request, format: :json)
end
