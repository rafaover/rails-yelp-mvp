puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0487392833", category: "chinese"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0487392833", category: "italian"}

[dishoom, pizza_east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
