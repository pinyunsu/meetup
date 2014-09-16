json.array!(@classmates) do |classmate|
  json.extract! classmate, :id, :name, :school, :gender, :bike
  json.url classmate_url(classmate, format: :json)
end
