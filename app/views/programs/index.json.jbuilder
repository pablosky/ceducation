json.array!(@programs) do |program|
  json.extract! program, :id, :name, :subject, :obj_fund_vert, :obj_fund_transv, :contents, :activities
  json.url program_url(program, format: :json)
end
