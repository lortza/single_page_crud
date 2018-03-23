json.extract! critter, :id, :name, :city, :color, :created_at, :updated_at
json.url critter_url(critter, format: :json)
