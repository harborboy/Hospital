json.array!(@hospitals)do |hospital|
json.extract! hospital, :id, :name
Json.url hospital_url(hospital, formate: :json)
end