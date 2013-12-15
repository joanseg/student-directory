def input_students
	puts "Please enter the name of the member"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	puts "students class #{students.class}"

	i = 1
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat thi code
	while !name.empty? do
		# add the student hash to the array
		students << {:count => i, :name => name, :cohort => :december}
		puts "Now we have #{students.length} members"
		# get another name from the user
		name = gets.chomp
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
		puts "#{stu[:count]} #{stu[:name]} (#{stu[:cohort]})"
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


