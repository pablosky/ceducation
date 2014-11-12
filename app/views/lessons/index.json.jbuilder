json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :answer, :category, :content, :distract1, :distract2, :distract3, :photo, :question, :tags, :word_id
  json.url lesson_url(lesson, format: :json)
end
