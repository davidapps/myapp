json.array!(@popos) do |popo|
  json.extract! popo, :id, :title
  json.url popo_url(popo, format: :json)
end
