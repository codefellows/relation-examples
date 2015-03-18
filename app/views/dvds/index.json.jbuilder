json.array!(@dvds) do |dvd|
  json.extract! dvd, :id, :title, :genre, :year, :rating, :description, :user_id
  json.url dvd_url(dvd, format: :json)
end
