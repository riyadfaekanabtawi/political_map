json.extract! stateinformation, :id, :state, :asesinatos, :robos, :violaciones, :maltrato_infantil, :created_at, :updated_at
json.url stateinformation_url(stateinformation, format: :json)
