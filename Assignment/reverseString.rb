String_value = "h^h67DF()h%6|/hgJD4"
puts "\nThe input string is #{String_value}"

string_alphanum_spaces = String_value.gsub(/[^0-9a-z]/i,' ')
string_reverse_spaces = string_alphanum_spaces.reverse
# puts string_reverse_spaces

string_alphanum = String_value.gsub(/[^0-9a-z]/i,'')
string_reverse = string_alphanum.reverse
string_reverse_char = string_reverse.chars

string_specialchar = String_value.gsub(/[0-9a-z]/i,' ')
# puts string_specialchar


#puts string_reverse[0...string_reverse.length]


string_reverse_char.each do |x|
	string_specialchar.sub!(' ',x)
end
puts "\nThe reverse string is #{string_specialchar}"


# string_char.each do |x|
# 	b=x.to_s
# 	output=string_specialchar.gsub(' ',b)
# 	puts output
# end
# string_char.map! do |x|
# 	subchar = x
# 	string_reverse.map do |y|
# 		(subchar == ' ' ) ? y : x
# 	end
# end
# puts string_char.to_s

