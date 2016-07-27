#write your code here
#  **find and destroy ## tags for debugging tags** 
def isConsonant letter
	vowels = ['a', 'e', 'i', 'o', 'u']
	return !(vowels.include?(letter))
end

def isSecondConsonant letter
	secondConsonants = ['h','t','c','l','p','q','r']
	return secondConsonants.include?(letter)
end

def isThirdConsonant letter
	thirdConsonants = ['r', 'h' ,'l']
	return thirdConsonants.include?(letter)
end

def translate prompt
	promptArray = prompt.split(" ") #split prompt into an array
	returnThis = ""
	swapFor = ""
	##puts "word: " + word

	promptArray.each do |word| 
		#------------------------------if the first letter is a "qu"--------------------------#
	    #  **all english words starting with q are followed by a u** 
	    if word[0] == "q" 
	    	##puts "first letters are 'qu'"
    		word = word[2..-1] #chop qu
    		word += "qu" #add "qu" to the end

	    #---------------------if the first letter of the word is a consanant------------------#
	    elsif isConsonant(word[0])
	    	##puts "first letter is a consonant: " + word[0]
	      
	    	if isSecondConsonant(word[1]) #and the second letter is one of the special "secondConsanants"
	    		##puts "second letter is a consonant: " + word[1]
	    		if isThirdConsonant(word[2]) || word[1] == "q" #and the third letter is one of the special "thirdConsanants" or if the second letter is a q (need to treat qu as a consonant)
	    			##puts "third letter is a consonant OR second letter is a q
	    			swapFor = word[0..2]
	    			word = word[3..-1]
	    			word += swapFor

	    		else #and the third letter is normal
	    			##puts "third letter is a vowel: " + word[2]
	    			swapFor = word[0..1]
	    			word = word[2..-1]
	    			word += swapFor
	    		end

	    	else #and the second letter is normal
	    		##puts "second letter is a vowel: " + word[1]
	    		swapFor = word[0]
    			word = word[1..-1]
    			word += swapFor
	    	end
	    end
	    word += "ay "
	    returnThis += word
 	end

 	return returnThis.strip #slice that last " "

end

puts translate("snuffleluffagus is a cunt")
