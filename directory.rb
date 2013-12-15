# let´s put all students into an array
students = [
	"Charles de Barros",
	"Damien Hogan",
	"Dharmesh Raithatha",
	"Enrique Comba",
	"Gavin Cooper",
	"James Jenkins",
	"Juan Manuel",
	"Kurmaran",
	"Robert Johnson",
	"Ron Blanco",
	"Ruben Kostucki",
	"Sam Joseph",
	"Samantha Harris",
	"David Thompson",
	"Joan Senent",
]
def print_header
	puts "The members of the Atlas Community"
	puts "___________"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great members"
end

# nothing happens until we call the methods

print_header
print(students)
print_footer(students) 


