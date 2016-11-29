doctor_map = "One: William Hartnell
Two:Patrick Troughton
Three:: Jon Pertwee
Four: Tom Baker (longest run)
5: Peter Davison
six: Colin Baker
Seven:   Sylvester McCoy
Eight: Paul McGann
Nine: Christopher Eccleston *series reboot*
Ten: David Tennant <- personal fav
Eleven: Matthew Robert Smith - the current doctor "
puts "\n"
puts doctor_map

doctors = doctor_map.scan(/([A-Za-z0-9]+)[:]*+([A-Za-z0-9(\*\<\-)\s]+[\n\s])/)
puts "\n"
doctors.each_index do |i|
	subarray = doctors[i]
	subarray.each_index do |x|
 		doctors[i][x]
 	end
end

puts "Enter the array to be search"
ab=gets.chomp.to_i
bb=gets.chomp.to_i
puts "\nassert_equal doctors[#{ab}][#{bb}], "+"#{doctors[ab][bb]}"