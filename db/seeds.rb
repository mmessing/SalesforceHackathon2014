# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(name: 'Quinn Doge',gender: 'undefined', email: 'tralal@tala.com', birthday: "1-1-1", location:"SF")
dog = Dog.create(name: 'daDoge', age:'.1', breed:'Sheba Enu', gender:'unisex')
#SF listings
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "16:30", end: "17:30", longitude: '-122.4199106434927', latitude: '37.80082026868395' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "18:30", end: "17:30", longitude: '-122.41187427183695', latitude: '37.76605037914857' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "14:30", end: "17:30", longitude: '-122.4149245262619', latitude: '37.767302421389964' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "16:30", end: "17:30", longitude: '-122.41191424417389', latitude: '37.78518717995181' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "12:30", end: "17:30", longitude: '-122.41921109375625', latitude: '37.796542888137395' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "08:00", end: "17:30", longitude: '-122.4299106434927', latitude: '37.81082026868395' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "06:00", end: "17:30", longitude: '-122.4399106434927', latitude: '37.82082026868395' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "08:30", end: "17:30", longitude: '-122.4499106434927', latitude: '37.83082026868395' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "09:30", end: "17:30", longitude: '-122.4169106434927', latitude: '37.70082026868395' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "15:30", end: "17:30", longitude: '-122.4099106434927', latitude: '37.79082026868395' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "13:30", end: "17:30", longitude: '-122.3999106434927', latitude: '37.80082026868395' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "14:30", end: "17:30", longitude: '-122.3899106434927', latitude: '37.81082026868395' )
listing = Listing.create(name: 'San Francisco', description: "City Walk", start: "18:30", end: "17:30", longitude: '-122.3799106434927', latitude: '37.82082026868395' )

#LA Listings
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "16:30", end: "17:30", longitude: '-118.26134121293205', latitude: '34.05155764593742' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "18:30", end: "17:30", longitude: '-118.23408866077659', latitude: '34.05181815090589' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "14:30", end: "17:30", longitude: '-118.24471136558799', latitude: '34.04244384370744' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "16:30", end: "17:30", longitude: '-118.26145739270373', latitude: '34.04266398047097' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "12:30", end: "17:30", longitude: '-122.41921109375625', latitude: '34.05027668387629' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "08:00", end: "17:30", longitude: '-122.4299106434927', latitude: '37.81082026868395' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "06:00", end: "17:30", longitude: '-122.4399106434927', latitude: '37.82082026868395' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "08:30", end: "17:30", longitude: '-122.4499106434927', latitude: '37.83082026868395' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "09:30", end: "17:30", longitude: '-122.4169106434927', latitude: '37.70082026868395' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "15:30", end: "17:30", longitude: '-122.4099106434927', latitude: '37.79082026868395' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "13:30", end: "17:30", longitude: '-122.3999106434927', latitude: '37.80082026868395' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "14:30", end: "17:30", longitude: '-122.3899106434927', latitude: '37.81082026868395' )
listing = Listing.create(name: 'Los Angeles', description: "City Walk", start: "18:30", end: "17:30", longitude: '-122.3799106434927', latitude: '37.82082026868395' )

#place = Place.create()