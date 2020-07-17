# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@hershey = Park.create!(name: 'Hershey Park', admission: 50.00)

@light_racer = @hershey.rides.create!(name: 'Lightning Racer', rating: 6)
@storm_runner = @hershey.rides.create!(name: 'Storm Runner', rating: 7)
@bear = @hershey.rides.create!(name: 'The Great Bear', rating: 8)
@frog = @hershey.rides.create!(name: 'The Frog Hopper', rating: 2)
@kiss = @hershey.rides.create!(name: 'The Kiss Raise', rating: 1)
@fahren = @hershey.rides.create!(name: 'Farenheit', rating: 5)

@kara = Mechanic.create!(name: 'Kara Smith', years_of_experience: 11)
@sam = Mechanic.create!(name: 'Sam Mills', years_of_experience: 10)

RideMechanic.create!(ride_id: @light_racer.id, mechanic_id: @kara.id)
RideMechanic.create!(ride_id: @storm_runner.id, mechanic_id: @kara.id)
