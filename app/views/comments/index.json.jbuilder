json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :message
  json.url comment_url(comment, format: :json)
end
