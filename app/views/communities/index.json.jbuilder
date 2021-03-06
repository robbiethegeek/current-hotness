json.array!(@communities) do |community|
  json.extract! community, :id, :name, :description, :path
  json.url community_url(community, format: :json)
end
