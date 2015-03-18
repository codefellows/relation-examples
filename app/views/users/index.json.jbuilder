json.array!(@users) do |user|
  json.extract! user, :id, :name, :location, :email, :phone
  json.url user_url(user, format: :json)
end
