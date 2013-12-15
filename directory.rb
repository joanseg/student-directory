# let´s put all students into an array
students = [
	{:name => "Charles de Barros", :cohort => :december},
	{:name => "Damien Hogan", :cohort => :december},
	{:name => "Dharmesh Raithatha", :cohort => :december},
	{:name => "Enrique Comba", :cohort => :december},
	{:name => "Gavin Cooper", :cohort => :december},
	{:name => "James Jenkins", :cohort => :december},
	{:name => "Juan Manuel", :cohort => :december},
	{:name => "Kurmaran", :cohort => :december},
	{:name => "Robert Johnson", :cohort => :december},
	{:name => "Ron Blanco", :cohort => :december},
	{:name => "Ruben Kostucki", :cohort => :december},
	{:name => "Sam Joseph", :cohort => :december},
	{:name => "Samantha Harris", :cohort => :december},
	{:name => "David Thompson", :cohort => :december},
	{:name => "Joan Senent", :cohort => :december}
]
def print_header
	puts "The members of the Atlas Community"
	puts "___________"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]})"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great members"
end

# nothing happens until we call the methods

print_header
print(students)
print_footer(students) 


