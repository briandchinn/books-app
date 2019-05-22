json.array! @authors.each do |author|
  json.first_name author.first_name
  json.last_name author.last_name
  json.age author.age
  json.books author.books
end