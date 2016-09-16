# questions

> So my main question is:

* the same code behaves differently inside or outside of the method, is this side effect or control flow related?

* Why does this loop require "done" to be entered twice while in a method but not on its own?

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