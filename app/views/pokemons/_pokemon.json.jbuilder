json.extract! pokemon, :id, :pokedex, :name, :stats_total, :hp, :attack, :defense, :sp_atk, :sp_def, :speed, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
