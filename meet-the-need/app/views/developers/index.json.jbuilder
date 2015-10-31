json.array!(@developers) do |developer|
  json.extract! developer, :id
  json.url developer_url(developer, format: :json)
end
