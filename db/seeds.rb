puts "Seeding Parking area data..."
north_parkade = ParkingArea.find_or_create_by! parking_area_name: 'North Parkade', address: '6115 Student Union Boulevard V6T 1Z1',latitude: 49.269966, longitude: -123.251043, total_spaces_available: 3, total_accessible_spaces: 1, lot_id: 5667, parking_area_information: 'Near Brock Hall, Gage Residence, Nest and Aquatic Centre '
west_parkade = ParkingArea.find_or_create_by! parking_area_name: 'West Parkade', address: '2140 Lower Mall V6T 1Z2',latitude: 49.263037, longitude: -123.255422, total_spaces_available: 3, total_accessible_spaces: 1, lot_id: 5671, parking_area_information: 'Near Education, Sauder School, Ponderosa Commons and Wreck Beach'
thunderbird_parkade = ParkingArea.find_or_create_by! parking_area_name: 'Thunderbird Parkade', address: '6065 Thunderbird Blvd V6T 1Z3',latitude: 49.261783, longitude: -123.243045, total_spaces_available: 3, total_accessible_spaces: 1, lot_id: 5677, parking_area_information: 'Near Doug Mitchell, Osborne, Pharmacy, and UBC Hospital'
puts "Re-creating spots ......"
Spot.destroy_all
# NORTH PARKADE PARKING SPOTS
alpha = north_parkade.spots.create!({
          label: '5667 - 123',
          availability: true,
          accessible: true,
          spot_information: 'L1, Elevator 100m away'
        })
beta = north_parkade.spots.create!({
          label: '5667 - 234',
          availability: true,
          accessible: false,
          spot_information: 'L2, Small cars only'
        })
charlie = north_parkade.spots.create!({
          label: '5667 - 524',
          availability: true,
          accessible: false,
          spot_information: 'L5'
        })
delta = north_parkade.spots.create!({
          label: '5667 - 122',
          availability: true,
          accessible: true,
          spot_information: 'L1, Elevator 400m away'
        })
echo = north_parkade.spots.create!({
          label: '5667 - 322',
          availability: true,
          accessible: false,
          spot_information: 'L3, Back in only'
        })
# WEST PARKADE PARKING SPOTS
alpha = west_parkade.spots.create!({
          label: '5671 - 145',
          availability: false,
          accessible: true,
          spot_information: 'L1, Elevator 100m away'
        })
beta = west_parkade.spots.create!({
          label: '5671 - 245',
          availability: false,
          accessible: false,
          spot_information: 'L2'
        })
charlie = west_parkade.spots.create!({
          label: '5671 - 244',
          availability: false,
          accessible: false,
          spot_information: 'L2'
        })
delta = west_parkade.spots.create!({
          label: '5671 - 144',
          availability: false,
          accessible: true,
          spot_information: 'L1, Elevator 100m away'
        })
echo = west_parkade.spots.create!({
          label: '5671 - 146',
          availability: false,
          accessible: false,
          spot_information: 'L1'
        })
# THUNDERBIRD PARKADE PARKING SPOTS
alpha = thunderbird_parkade.spots.create!({
          label: '5677 - 167',
          availability: true,
          accessible: true,
          spot_information: 'L1, Elevator 25m away'
        })
beta = thunderbird_parkade.spots.create!({
          label: '5677 - 176',
          availability: false,
          accessible: false,
          spot_information: 'L1'
        })
charlie = thunderbird_parkade.spots.create!({
          label: '5667 - 176',
          availability: false,
          accessible: false,
          spot_information: 'L1'
        })
delta = thunderbird_parkade.spots.create!({
          label: '5667 - 174',
          availability: false,
          accessible: true,
          spot_information: 'L1'
        })
echo = thunderbird_parkade.spots.create!({
          label: '5667 - 179',
          availability: false,
          accessible: false,
          spot_information: 'L1'
        })