@students = [] # an empty array accessible to all methods

def input_students
	puts "Please enter the name of the member"
	puts "To finish, just hit return three times"
	i = 1
	# get the first name
	name = gets.chomp

	puts "Please specify member´s country"
	country = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? | !country.empty? do
		# add the student hash to the array
		@students << {:count => i, :name => name, :cohort => :december, :country => country}
		puts "Now we have #{@students.length} members"
		# get another name from the user
		puts "Please enter the name of the member"
		name = gets.chomp 
		puts "Please specify member´s country"
		country = gets.chomp
		i += 1
	end
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit" # 9 because we will be adding more items later
end

def show_students
	print_header
	print_students_list
	print_footer
end

def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "3"
		save_students
	when "4"
		load_students
	when "9"
		exit
	else
		puts "I don´t know what you mean, try again"
	end
end

def interactive_menu
	loop do
		print_menu
		process(gets.chomp)
	end
end

def print_header
	puts "The members of the Atlas Community"
	puts "___________"
end

def print_students_list
	@students.each do |student|
		student[:name] = student[:name] == "" ? "default" : student[:name]
		student[:country] = student[:country] == "" ? "default" : student[:country]
		puts "#{student[:count]} #{student[:name].center(7)}, #{student[:cohort]}, #{student[:country].center(7)}"
	end
end

def print_footer
	member = @students.length == 1 ? "member" : "members"
	puts "Overall, we have #{@students.length} great #{member}"
end

def save_students
	# open the file for writing
	file = File.open("students.csv", "w")
	# iterate over the array of students
	@students.each do |student|
		student_data = [student[:count], student[:name], student[:cohort], student[:country]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def load_students
	file = File.open("students.csv", "r")
	file.readlines.each do |line|
		count, name, cohort, country = line.chomp.split(',')
		@students << {:count => count, :name => name, :cohort => cohort, :country => country}
	end
	file.close
end

# nothing happens until we call the methods
interactive_menu
# students = input_students not necessary anymore
# print_header
# print(students)
# print_footer(students) 
# puts students.class

