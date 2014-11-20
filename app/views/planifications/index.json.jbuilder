json.array!(@planifications) do |planification|
  json.extract! planification, :id, :user_id, :program_id, :subject, :teach_time, :classroom_id, :obj_fund_vert, :obj_fund_transv, :contents, :expect_learn, :activ
  json.url planification_url(planification, format: :json)
end
