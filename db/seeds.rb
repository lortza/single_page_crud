# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Creating Cities"
City.create!([
  {name: 'Todos Santos'},
  {name: 'New Orleans'},
  {name: 'Leon'},
  {name: 'Isla Mujeres'}
])

todos = City.find_by(name: 'Todos Santos')
nola = City.find_by(name: 'New Orleans')
leon = City.find_by(name: 'Leon')
isla = City.find_by(name: 'Isla Mujeres')

p "Creating Critters"
Critter.create!([
  {name: 'Noche', color: 'black', city_id: isla.id},
  {name: 'Miko', color: 'yellow', city_id: isla.id},
  {name: 'Lara', color: 'black & white', city_id: isla.id},
  {name: 'Mara', color: 'black & white', city_id: isla.id},
  {name: 'PC', color: 'black & white', city_id: nola.id},
  {name: 'Zorro', color: 'black', city_id: nola.id},
  {name: 'Violet', color: 'black', city_id: nola.id},
  {name: 'Fritzie', color: 'black', city_id: nola.id},
  {name: 'Ciro', color: 'white', city_id: nola.id},
  {name: 'Loki', color: 'white', city_id: nola.id},
  {name: 'Thor', color: 'orange', city_id: nola.id},
  {name: 'Alex', color: 'orange', city_id: nola.id}
])

p 'Done!'
