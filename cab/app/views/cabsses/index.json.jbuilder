json.array!(@cabsses) do |cabss|
  json.extract! cabss, :id, :cab_type, :cab_no, :rate, :insure
  json.url cabss_url(cabss, format: :json)
end
