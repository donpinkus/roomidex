# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

City.create!([
	{name: "San Francisco"},
	{name: "New York"}
])

# SF 
Neighborhood.create!([
	{name: "SOMA / South Beach", city_id: 1},
	{name: "USF / Panhandle", city_id: 1},
	{name: "Alamo Square / NOPA", city_id: 1},
	{name: "Bayview", city_id: 1},
	{name: "Bernal Heights", city_id: 1},
	{name: "Castro / Upper Market", city_id: 1},
	{name: "Cole Valley / Ashbury Heights", city_id: 1},
	{name: "Downtown / Civic / Van Ness", city_id: 1},
	{name: "Excelsior / Outer Mission", city_id: 1},
	{name: "Financial District", city_id: 1},
	{name: "Glen Park", city_id: 1},
	{name: "Haight Ashbury", city_id: 1},
	{name: "Hayes Valley", city_id: 1},
	{name: "Ingleside / SFSU / CCSF", city_id: 1},
	{name: "Inner Richmond", city_id: 1},
	{name: "Inner Sunset / UCSF", city_id: 1},
	{name: "Laurel Heights / Presidio", city_id: 1},
	{name: "Lower Haight", city_id: 1},
	{name: "Lower Nob Hill", city_id: 1},
	{name: "Lower Pac Heights", city_id: 1},
	{name: "Marina / Cow Hollow", city_id: 1},
	{name: "Mission District", city_id: 1},
	{name: "Nob Hill", city_id: 1},
	{name: "Noe Valley", city_id: 1},
	{name: "North Beach / Telegraph Hill", city_id: 1},
	{name: "Pacific Heights", city_id: 1},
	{name: "Potrero Hill", city_id: 1},
	{name: "Richmond / Seacliff", city_id: 1},
	{name: "Russian Hill", city_id: 1},
	{name: "Sunset / Parkside", city_id: 1},
	{name: "Tenderloin", city_id: 1},
	{name: "Twin Peaks / Diamond Heights", city_id: 1},
	{name: "Visitacion Valley", city_id: 1},
	{name: "Western Addition", city_id: 1}
])

# NY
Neighborhood.create!([
	{name: "Battery Park / Financial District", city_id: 2},
	{name: "Chelsea", city_id: 2},
	{name: "East Village", city_id: 2},
	{name: "Greenwich Village", city_id: 2},
	{name: "Lower East Side", city_id: 2},
	{name: "Midtown East", city_id: 2},
	{name: "Murray Hill", city_id: 2},
	{name: "SoHo/NoHo", city_id: 2},
	{name: "Union Square", city_id: 2},
	{name: "Upper West Side", city_id: 2},
	{name: "Brooklyn", city_id: 2},
	{name: "Columbus Circle", city_id: 2},
	{name: "Gramercy / Flatiron", city_id: 2},
	{name: "Harlem / Bronx", city_id: 2},
	{name: "Meatpacking", city_id: 2},
	{name: "Midtown West", city_id: 2},
	{name: "Queens", city_id: 2},
	{name: "TriBeCa", city_id: 2},
	{name: "Upper East Side", city_id: 2},
	{name: "West Village", city_id: 2},
])