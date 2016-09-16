def allergy_test(allergies)
	while allergies.downcase != "done" && allergies.downcase != "sunlight" 
		puts "Please enter another or done:"
		allergies = gets.chomp
	end
# no idea why, but this logic step repeats itself
	if allergies.downcase == "done"
		false
	elsif allergies.downcase == "sunlight"
		true
	end
end

allergies = gets.chomp
allergy_test(allergies)
