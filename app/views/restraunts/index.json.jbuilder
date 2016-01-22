json.array!(@restraunts) do |restraunt|
  json.extract! restraunt, :id, :name, :address, :phone, :website
  json.url restraunt_url(restraunt, format: :json)
end
