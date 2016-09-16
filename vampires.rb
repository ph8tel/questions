
#test to see if the names entered are "Tu Fangs or Drake Cula"
def name_test(name)
	if name.upcase == "TU FANGS" 
		true
	elsif name.upcase == "DRAKE CULA"
		true
	else
		false
	end
end

#If the user likes likes garlic or not
def garlic_test(garlic)
	
	if garlic[0].upcase == "Y"
	   true
	elsif garlic[0].upcase == "N"
	   false
	else  
	   puts "Please enter yes or no"
	   garlic = gets.chomp
	   garlic_test(garlic) 
	end
end

#Health insurance, test to see if they want it
def health_insurance_test(health_insurance_answer)
	if health_insurance_answer[0].upcase == "Y"
		true
	elsif health_insurance_answer[0].upcase == "N" 
		false		
	else 
		puts "please enter yes or no"
		health_insurance_answer = gets.chomp
		health_insurance_test(health_insurance_answer)
	end
end

# age test so need to compare 2016-input to age
def age_test(age, year_born)
	if (2016 - year_born) != age
		false
	else
		true
	end	
end

#Allergy test. If they enter sunshine, the result is false
def allergy_test(allergies)
# no idea why, but this logic step repeats itself
	if allergies.downcase == "done"
		false
	elsif allergies.downcase == "sunlight"
		true
	end

	while allergies.downcase != "done" && allergies.downcase != "sunlight" 
		puts "Please enter another or done:"
		allergies = gets.chomp
	end

end


# UI starts here
puts "Enter name :"
name = gets.chomp
name_test(name)

puts "How old are you?"
age = gets.chomp.to_i 

puts "What year were you born?"
year_born = gets.chomp.to_i
age_test(age, year_born)

puts "Garlic Bread? Y/N"
garlic = gets.chomp
garlic_test(garlic)

puts "Health insurance? Y/N"
health_insurance_answer = gets.chomp
health_insurance_test(health_insurance_answer)


puts "enter allergies or done if none:"
allergies = gets.chomp
allergy_test(allergies)



#Decision logic here
# there are going to be several steps
# 1. If the employee got their age right, and is willing to eat
# garlic bread or sign up for insurance, the result is “Probably
# not a vampire.”
# 2. If the employee got their age wrong, and hates garlic bread
# or waives insurance, the result is “Probably a vampire.”
# 3.If the employee got their age wrong, hates garlic bread, and
# doesn’t want insurance, the result is “Almost certainly a vampire.”
# 4.Even if the employee is an amazing liar otherwise, anyone going
# by thename name of “Drake Cula” or “Tu Fang” is clearly a vampire,
# because come on. In that case, you should print “Definitely a vampire.”

# Otherwise, print “Results inconclusive.

	if  name_test(name) || allergy_test(allergies)
		puts "Definitely a vampire"
	elsif age_test(age, year_born) && (garlic_test(garlic) || health_insurance_test(health_insurance_answer))
		puts "Probably not a vampire."
	elsif !age_test(age, year_born) && ( !garlic_test(garlic) || !health_insurance_test(health_insurance_answer))
		puts "Probably a vampire"
	elsif !age_test(age, year_born) && ( !garlic_test(garlic) && !health_insurance_test(health_insurance_answer))
		puts "Almost certainly a vampire"

	else
		puts "Results inconclusinve"
end			
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
 