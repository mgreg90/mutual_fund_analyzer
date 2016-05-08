json.array!(@mutual_fund_data) do |mutual_fund_datum|
  json.extract! mutual_fund_datum, :id, :raw_yf_date, :raw_mstar_data
  json.url mutual_fund_datum_url(mutual_fund_datum, format: :json)
end
