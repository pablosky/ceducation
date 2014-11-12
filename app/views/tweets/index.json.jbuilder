json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :name, :ttext, :date
  json.url tweet_url(tweet, format: :json)
end
