# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
start_time = DateTime.new(2012, 8, 29, 22, 35, 0).change(day: 1)
end_time = DateTime.new(2012, 8, 29, 22, 35, 0).change(day: 1)
duration = 1440
fa = Flight.create(start: start_time, duration: duration)
fb = Flight.create(start: end_time, duration: duration)

a = Airport.create(code: "SFO")

b = Airport.create(code: "SFO")
c = Airport.create(code: "LAX")
d = Airport.create(code: "JFK")
e = Airport.create(code: "PHX")
f = Airport.create(code: "BOS")

a.arrival_flights << fa
a.departing_flights << fb


b.arrival_flights << fb
b.departing_flights << fa