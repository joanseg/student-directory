def input_students
	puts "Please enter the name of the member"
	puts "To finish, just hit return three times"
	# create an empty array
	students = []
	i = 1
	# get the first name
	name = gets.chomp

	puts "Please specify member´s country"
	country = gets.chomp
	# while the name is not empty, repeat thi code
	while !name.empty? do
		# add the student hash to the array
		students << {:count => i, :name => name, :cohort => :december, :country => country}
		puts "Now we have #{students.length} members"
		# get another name from the user
		puts "Please enter the name of the member"
		name = gets.chomp
		puts "Please specify member´s country"
		country = gets.chomp
		i += 1
	end
	# return the array of students
	students
end


def print_header
	puts "The members of the Atlas Community"
	puts "___________"
end

def print(students)
	counter = 0
	while counter <= students.count - 1
		stu = students[counter]
		puts "#{stu[:count]} #{stu[:name]}, #{stu[:cohort]}, #{stu[:country]}"
		counter += 1
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great members"
end

# nothing happens until we call the methods

students = input_students
print_header
print(students)
print_footer(students) 


