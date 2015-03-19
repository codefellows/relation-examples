json.array!(@actors) do |actor|
  json.extract! actor, :id, :name, :yob, :awards
  json.url actor_url(actor, format: :json)
end
