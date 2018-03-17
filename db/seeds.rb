puts "Seeding Parking area data..."
north_parkade = ParkingArea.find_or_create_by! parking_area_name: 'North Parkade', address: '6115 Student Union Boulevard V6T 1Z1',latitude: 49.269966, longitude: -123.251043, total_spaces_available: 3, total_accessible_spaces: 1, lot_id: 5667, parking_area_information: 'Near Brock Hall, Gage Residence, Nest and Aquatic Centre '
west_parkade = ParkingArea.find_or_create_by! parking_area_name: 'West Parkade', address: '2140 Lower Mall V6T 1Z2',latitude: 49.263037, longitude: -123.255422, total_spaces_available: 3, total_accessible_spaces: 1, lot_id: 5671, parking_area_information: 'Near Education, Sauder School, Ponderosa Commons and Wreck Beach'
thunderbird_parkade = ParkingArea.find_or_create_by! parking_area_name: 'Thunderbird Parkade', address: '6065 Thunderbird Blvd V6T 1Z3',latitude: 49.261783, longitude: -123.243045, total_spaces_available: 3, total_accessible_spaces: 1, lot_id: 5677, parking_area_information: 'Near Doug Mitchell, Osborne, Pharmacy, and UBC Hospital'
puts "Re-creating spots ......"
Spot.destroy_all
# NORTH PARKADE PARKING SPOTS
alpha = north_parkade.spots.create!({
          label: 'Alpha',
          availability: true,
          accessible: true,
          spot_information: 'Wheel chair elevator near by'
        })
beta = north_parkade.spots.create!({
          label: 'Beta',
          availability: true,
          accessible: false,
          spot_information: 'Small space no trucks'
        })
charlie = north_parkade.spots.create!({
          label: 'Charlie',
          availability: true,
          accessible: false,
          spot_information: 'Back in only'
        })
delta = north_parkade.spots.create!({
          label: 'Delta',
          availability: true,
          accessible: true,
          spot_information: 'Testing'
        })
echo = north_parkade.spots.create!({
          label: 'Echo',
          availability: true,
          accessible: false,
          spot_information: 'Testing'
        })
# WEST PARKADE PARKING SPOTS
alpha = west_parkade.spots.create!({
          label: 'Alpha',
          availability: true,
          accessible: true,
          spot_information: 'Wheel chair elevator near by'
        })
beta = west_parkade.spots.create!({
          label: 'Beta',
          availability: true,
          accessible: false,
          spot_information: 'Small space no trucks'
        })
charlie = west_parkade.spots.create!({
          label: 'Charlie',
          availability: true,
          accessible: false,
          spot_information: 'Back in only'
        })
delta = west_parkade.spots.create!({
          label: 'Delta',
          availability: true,
          accessible: true,
          spot_information: 'Testing'
        })
echo = west_parkade.spots.create!({
          label: 'Echo',
          availability: true,
          accessible: false,
          spot_information: 'Testing'
        })
# THUNDERBIRD PARKADE PARKING SPOTS
alpha = thunderbird_parkade.spots.create!({
          label: 'Alpha',
          availability: true,
          accessible: true,
          spot_information: 'Wheel chair elevator near by'
        })
beta = thunderbird_parkade.spots.create!({
          label: 'Beta',
          availability: true,
          accessible: false,
          spot_information: 'Small space no trucks'
        })
charlie = thunderbird_parkade.spots.create!({
          label: 'Charlie',
          availability: true,
          accessible: false,
          spot_information: 'Back in only'
        })
delta = thunderbird_parkade.spots.create!({
          label: 'Delta',
          availability: true,
          accessible: true,
          spot_information: 'Testing'
        })
echo = thunderbird_parkade.spots.create!({
          label: 'Echo',
          availability: true,
          accessible: false,
          spot_information: 'Testing'
        })