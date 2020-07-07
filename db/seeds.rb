# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Stations
st = Station.create(name: 'Pallet Town', address: 'Oak St., 555 - Pallte Town', latitude: 56.4447, longitude: -22.4565)

(1..8).to_a.each do |number|
  st.slots.create(number: number)
end

# Bikes
(1..5).to_a.each { Bike.create(model: 'BM-01') }

#Users
User.create(fullname: 'Ramon Ferreira Silva', email: 'rsilva@ramonsilva.net', password: '123456')
