# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Availability.destroy_all
Hairdresser.destroy_all

user = User.create(first_name: "Christian", last_name: "Baker", email: "chris@wagon.com", password: "hellohello")


hairdresser = Hairdresser.new(description: "Worked in Paris for 5 years",
 city: "London", location: "Salon Hairflair")

hairdresser.user = user
puts "did not save" unless hairdresser.save


# availability = Availability.create(weekday: 1, open_time: 10:00, closing_time: 19:00)

# availability.hairdresser = hairdresser
# hairdresser.save

