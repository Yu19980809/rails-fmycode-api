json.stories do
  json.array! @stories do |story|
    json.extract! story, :id, :title, :content, :picture_url
  end
end
