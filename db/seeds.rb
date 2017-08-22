# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: "kajsa@wagon.com", password: "hellohello")


5.times do
  hairdresser = Hairdresser.new(name: "Lisa Baker", description: "Worked in Paris for 5 years and specialise on short hair",
   city: "London", location: "Salon Hairflair")

  hairdresser.user = user
  puts "did not save" unless hairdresser.save
end

