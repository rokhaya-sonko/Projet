json.extract! town, :id, :name, :postal_code, :lattitude, :longitude, :created_at, :updated_at
json.url town_url(town, format: :json)
json.icon @forecast.currently.icon
json.temperature @forecast.currently.temperature
￼json.summary @forecast.summary

