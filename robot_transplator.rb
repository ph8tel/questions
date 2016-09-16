# if capitalz & in first half alphab = bloop
#else if cap or e = buzz
# not letter = boing
# else = beep
# Happy Halloweer = bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbeepboing







def translate_char(char)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length / 2
	is_capitalized = (char.upcase == char)

	if !alphabet.index(char.downcase)
		"boing"
	elsif is_capitalized && alphabet.index(char.downcase) < halfway
		"bloop"
	elsif is_capitalized || char == "e" 
		"buzz"
	else
		"beep"
	end
end




 def translate_phrase(phrase)
 	char_index = 0
 	translated_response = ""
 	while char_index < phrase.length
 		translated_response << translate_char(phrase[char_index])
 		char_index += 1
 	 	end
 	 	translated_response
 end
 #											  "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"	
 #puts translate_phrase("Happy Halloween!") == "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

# UI
loop do
puts "enter a phrase to translate or q"
inputted_phrase = gets.chomp
break if inputted_phrase == 'q'
puts translate_phrase(inputted_phrase)
end
