# This is the main entrypoint into the program
# It requires the other files/gems that it needs
 
require 'pry'
require 'byebug'
require './candidates'
require './filters'
 
## Your test code can go here
 
 
#pp qualified_candidates

bOK = true
sUser = ""
#byebug
while bOK

	puts "Please enter a command"
	puts "\"find\" where x is the candidate number"
	puts "\"all\" displays out all candidates"
	puts "\"qualified\" displays only qualified candidates"
	puts "\"quit\" exit the program"

	sUser = gets.chomp.downcase

	case sUser
	when "find"
		find_employee_number
	when "all"
		puts "-----"
		puts ""
		puts ordered_by_qualifications(@candidates)
		puts ""
		puts "-----"
	when "qualified"
		puts "-----"
		puts ""
		puts qualified_candidates(@candidates)
		puts ""
		puts "-----"
	when "quit"
		bOK = false
	else
		puts "-----"
		puts ""
		puts "command not found"
		puts ""
		puts "-----"
	end

end

puts "terminated"

