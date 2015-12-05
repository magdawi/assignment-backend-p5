json.array!(@users) do |user|
  json.extract! user, :id, :name, :password, :email, :regDate, :filecards_id
  json.url user_url(user, format: :json)
end
