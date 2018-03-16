# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Parking area data..."
north_parkade = ParkingArea.find_or_create_by! parking_area_name: 'North Parkade', address: '6115 Student Union Boulevard V6T 1Z1',latitude: 49.269966, longitude: -123.251043, total_spaces_available: 3, total_accessible_spaces: 1, lot_id: 5667, parking_area_information: 'Near Brock Hall, Gage Residence, Nest and Aquatic Centre '

puts "Re-creating spots ......"
Spot.destroy_all
alpha = north_parkade.spots.create!({
          label: 'Alpha',
          occupied: false,
          accessible: true,
          spot_information: 'Wheel chair elevator near by'
        })
beta = north_parkade.spots.create!({
          label: 'Beta',
          occupied: false,
          accessible: false,
          spot_information: 'Small space no trucks'
        })
charlie = north_parkade.spots.create!({
          label: 'Charlie',
          occupied: false,
          accessible: false,
          spot_information: 'Back in only'
        })


User.create(email: 'aaa', password: 'aaa', password_confirmation: 'aaa')
puts "Re-creating a user ......"
