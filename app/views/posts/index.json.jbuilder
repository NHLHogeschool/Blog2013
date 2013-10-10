json.array!(@posts) do |post|
  json.label post.title
  json.id post.id
end
