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
# and then print them
puts "The members of the Atlas Community"
puts "______________"
students.each do |student|
	puts student
end
# finally, we print the total
puts "Overall, we have #{students.length} great students."



