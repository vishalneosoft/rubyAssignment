class Userdata
	puts "School Data".rjust(50)
	def data
		user = Hash.new 
			puts "Enter First Name:"
			name=gets.chomp
			puts "Enter Your Grade:"
			grade=gets.chomp
			user[name]=grade
			puts "\n"
			puts user.each { |x,y| puts "Grade: #{y}, Name: #{x}" }
			answer = "y"
			while answer == "y"
			puts "\nAdd another student\nIf YES press 'y' else 'n'"
			answer = gets.chomp
			case answer
			when "y"
				puts "Enter First name:"
				name=gets.chomp
				puts "Enter Your Grade"
				grade=gets.chomp
				user[name]=grade
				puts "\n"
				puts user.each { |x,y| puts "Grade: #{y}, Name: #{x}" }
			else 
				puts "Thank you".rjust(50)
				puts "\nEnter the grade to be search"
				grade_value=gets.chomp
				puts "\nList of Student from Grade #{grade_value}"
				puts user.map{ |k,v| v==grade_value ? k : nil }.compact
				puts "\nDo you want to sort the names using grade\nIf YES press 'y' else 'n'"
				answer1 =gets.chomp
				if(answer1 == 'y')
						puts "The Sorted list is".rjust(50)
						sorted_user = Hash[user.sort_by { |k,v| [v,k] }]
						puts sorted_user.each { |x,y| puts "Grade: #{y}, Name: #{x}" }
					else
						puts "Thank You".rjust(50)
						puts user.each { |x,y| puts "Grade: #{y}, Name: #{x}" }
				end
			end
			end	
	end
end
obj_grade = Userdata.new
obj_grade.data