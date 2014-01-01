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
	# while the name is not empty, repeat this code
	while !name.empty? | !country.empty? do
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

def interactive_menu
	students = []
	loop do
		# 1. print the menu and ask the users what to do
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"
		# 2. read the input and save it into a variable
		selection = gets.chomp
		# 3. do what the user has asked
		case selection
		when "1"
			students = input_students
		when "2"
			print_header
			print(students)
			print_footer(students)
		when "9"
			exit # this will cause the program to terminate
		else
			puts "I don´t know what you meant, try again"
		end
	end
end

def print_header
	puts "The members of the Atlas Community"
	puts "___________"
end

def print(students)

	counter = 0
	while counter <= students.count - 1
		stu = students[counter]
		stu[:name] = stu[:name] == "" ? "default" : stu[:name]
		stu[:country] = stu[:country] == "" ? "default" : stu[:country]
		puts "#{stu[:count]} #{stu[:name].center(7)}, #{stu[:cohort]}, #{stu[:country].center(7)}"
		counter += 1
	end
end

def print_footer(names)
	member = names.length == 1 ? "member" : "members"
	puts "Overall, we have #{names.length} great #{member}"
end

# nothing happens until we call the methods
interactive_menu
# students = input_students not necessary anymore
# print_header
# print(students)
# print_footer(students) 
# puts students.class

