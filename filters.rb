# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
 
def find(id)
 
	@candidates.each do |i|
		if i[:id] == id
			return i
		# else
		# 	return "id not found"
		end
	end

end
 
def experienced?(candidate)

	if candidate[:years_of_experience] >= 2
		return true
	else
		return false
	end

end
 
# More methods will go below

def qualified_candidates(candidates)

	qualified = []

	candidates.each do |i|
		if i[:years_of_experience] >= 1 && i[:github_points] >= 100 && i[:languages].include?('Ruby' || 'Python') && i[:date_applied] >= Date.today - 15 && i[:age] >= 18
			qualified << i

		end
	end

	return qualified

end

def ordered_by_qualifications(candidates) #fix direction of github points

	candidates.sort_by! { |x| x[:years_of_experience] || x[:github_points]}.reverse

end

def find_employee_number

	bOK = true

	while bOK
		puts "Please enter an employee number"
		begin
			iUser = Integer(gets.chomp)
			puts "-----"
			puts ""
			puts find(iUser)
			puts ""
			puts "-----"
			bOK = false
		rescue
			puts "Invalid Integer"
		end
	end
end

