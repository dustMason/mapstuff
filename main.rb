require 'json'

puts JSON.dump(Hash[JSON.parse(ARGF.read)["features"].map do |f|
  [f["properties"]["ISO3166-2"], [f["geometry"]["coordinates"], f["geometry"]["type"]]]
end])