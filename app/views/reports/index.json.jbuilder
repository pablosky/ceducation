json.array!(@reports) do |report|
  json.extract! report, :id, :reason, :lesson_id
  json.url report_url(report, format: :json)
end
