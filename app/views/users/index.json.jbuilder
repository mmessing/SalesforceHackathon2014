json.array!(@users) do |user|
  json.extract! user, :id, :name, :gender, :email, :birthday, :location
  json.url user_url(user, format: :json)
end
