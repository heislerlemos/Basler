json.extract! mapa, :id, :latitude, :longitude, :address, :description, :title, :created_at, :updated_at
json.url mapa_url(mapa, format: :json)
