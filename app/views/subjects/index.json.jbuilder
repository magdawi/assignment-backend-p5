json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :dateCreated, :active, :user_id
  json.url subject_url(subject, format: :json)
end
