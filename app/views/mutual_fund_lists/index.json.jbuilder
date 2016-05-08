json.array!(@mutual_fund_lists) do |mutual_fund_list|
  json.extract! mutual_fund_list, :id, :ticker_list
  json.url mutual_fund_list_url(mutual_fund_list, format: :json)
end
