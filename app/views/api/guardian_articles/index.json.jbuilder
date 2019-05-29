# json.particles @articles

json.array! @articles.each do |article|
  json.Title article["webTitle"]
  json.Section article["sectionName"]
  json.Url article["webUrl"]
end