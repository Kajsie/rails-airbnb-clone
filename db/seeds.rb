# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hairdresser.destroy_all
User.destroy_all
# Availability.destroy_all

user_1 = User.create(first_name: "Christian", last_name: "Baker", email: "chris@wagon.com", password: "hellohello")
user_2 = User.create(first_name: "Maria", last_name: "Smith", email: "maria@wagon.com", password: "hellohello")
# user_3 = User.create(first_name: "Sofia", last_name: "Hanson", email: "sofia@wagon.com", password: "hellohello")
# user_4 = User.create(first_name: "Tim", last_name: "Taylor", email: "tim@wagon.com", password: "hellohello")
# user_5 = User.create(first_name: "Max", last_name: "Baker", email: "max@wagon.com", password: "hellohello")
# user_6 = User.create(first_name: "Anna", last_name: "Miller", email: "anna@wagon.com", password: "hellohello")
# user_7 = User.create(first_name: "Lisa", last_name: "Anderson", email: "lisa@wagon.com", password: "hellohello")
# user_8 = User.create(first_name: "Mia", last_name: "Walker", email: "mia@wagon.com", password: "hellohello")
# user_9 = User.create(first_name: "Susan", last_name: "Adams", email: "susan@wagon.com", password: "hellohello")
# user_10 = User.create(first_name: "Carol", last_name: "Allen", email: "carol@wagon.com", password: "hellohello")



hairdresser_1 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

hairdresser_1.user = user_1
puts "did not save" unless hairdresser_1.save


hairdresser_2 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

hairdresser_2.user = user_2
puts "did not save" unless hairdresser_2.save


# hairdresser_3 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

# hairdresser_3.user = user_3
# # puts "did not save" unless hairdresser_3.save


# hairdresser_4 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

# hairdresser_4.user = user_4
# # puts "did not save" unless hairdresser_4.save


# hairdresser_5 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

# hairdresser_5.user = user_5
# # puts "did not save" unless hairdresser_5.save


# hairdresser_6 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

# hairdresser_6.user = user_6
# # puts "did not save" unless hairdresser_6.save


# hairdresser_7 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

# hairdresser_7.user = user_7
# # puts "did not save" unless hairdresser_7.save


# hairdresser_8 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

# hairdresser_8.user = user_8
# # puts "did not save" unless hairdresser_8.save


# hairdresser_9 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

# hairdresser_9.user = user_9
# puts "did not save" unless hairdresser_9.save


# hairdresser_10 = Hairdresser.new(description: "Worked in Paris for 5 years", city: "London", location: "Salon Hairflair")

# hairdresser_10.user = user_10
# puts "did not save" unless hairdresser_10.save


# availability = Availability.create(weekday: 1, open_time: 10:00, closing_time: 19:00)

# availability.hairdresser = hairdresser
# hairdresser.save

