json.array!(@filecards) do |filecard|
  json.extract! filecard, :id, :question, :answer, :public, :submitDate, :subject_id, :user_id
  json.url filecard_url(filecard, format: :json)
end
