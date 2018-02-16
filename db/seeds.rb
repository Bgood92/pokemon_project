PokemonType.delete_all
Pokemon.delete_all
Generation.delete_all

csv_file = Rails.root + 'db/pokemon.csv'

options = { file_encoding: 'iso-8859-1' }

all_pokemon = SmarterCSV.process(csv_file, options)

all_pokemon.each do |p|
  csv_types = "#{p[:type_1]}, #{p[:type_2]}".split(',').map(&:strip).compact
  csv_generation = p[:generation]
  csv_region = p[:region]

  p.delete(:type_1)
  p.delete(:type_2)
  p.delete(:generation)
  p.delete(:region)

  generation = Generation.find_or_create_by(gen: csv_generation, region: csv_region)

  pokemon = Pokemon.create(
      pokedex: p[:pokedex],
      name: p[:name],
      stats_total: p[:stats_total],
      hp: p[:hp],
      attack: p[:attack],
      defense: p[:defense],
      sp_atk: p[:sp_atk],
      sp_def: p[:sp_def],
      speed: p[:speed],
      legendary: p[:legendary],
      generation: generation
  )

  csv_types.each do |csv_type|
    type = Type.find_or_create_by(name: csv_type)
    PokemonType.create(pokemon: pokemon, type: type)
  end
end
