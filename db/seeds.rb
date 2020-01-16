# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movelist.destroy_all
Pokemon.destroy_all
TechnicalMachine.destroy_all

pikachu = Pokemon.create(name: "Pikachu", element: "Electric", level: 10)
hitmonchan = Pokemon.create(name: "Hitmonchan", element: "Fighting", level: 20)
zigzagoon = Pokemon.create(name: "Zigzagoon", element: "Normal", level: 15)
goomy = Pokemon.create(name: "Goomy", element: "Dragon", level: 40)
hoppip = Pokemon.create(name: "Hoppip", element: "Grass", level: 5)

thunderbolt = TechnicalMachine.create(name: "Thunderbolt", element: "Electric", number: 24)
seismic = TechnicalMachine.create(name: "Seismic Toss", element: "Fighting", number: 19)
hyper = TechnicalMachine.create(name: "Hyper Beam", element: "Normal", number: 15)
drage = TechnicalMachine.create(name: "Dragon Rage", element: "Dragon", number: 23)
mega = TechnicalMachine.create(name: "Mega Drain", element: "Grass", number: 21)

Movelist.create(pokemon: pikachu, technical_machine: thunderbolt)
Movelist.create(pokemon: hitmonchan, technical_machine: seismic)
Movelist.create(pokemon: zigzagoon, technical_machine: hyper)
Movelist.create(pokemon: goomy, technical_machine: drage)
Movelist.create(pokemon: hoppip, technical_machine: mega)
