#write your code here
def echo prompt
	return prompt
end

def shout prompt
	return prompt.to_s.upcase
end

def repeat (prompt, numRepeats = 1)
	
	if numRepeats < 1 #cant return 0 repeats or negative repeats
		return error
	end

	if numRepeats == 1 #weird bug in the phrase (repeat once is the same as repeat twice)
		numRepeats = 2
	end

	i = 0
	returnThis = ""
	while i < numRepeats do
		returnThis += prompt

		if (i+1 != numRepeats) #if its not the last repetition add a space between words
			returnThis += " "
		end

		i +=1
	end

	return returnThis
end

def start_of_word (prompt, upTo)
	i = 0
	returnThis = ""
	while i < upTo #return letters up to the input upTo
		returnThis += prompt[i]
		i +=1
	end
	return returnThis
end

def first_word prompt
	returnThis = ""
	i = 0;
	while (prompt[i] != " ") #read until you see a space
		returnThis += prompt[i]
		i +=1
	end

	return returnThis
end


def titleize(prompt)
  promptArray = prompt.split(" ") #split prompt into an array
  littleWords = ['and','of','is','the','or','in','it','a','an','over'] #words not deemed significant by the title-masters of planet Title Omega 5
  returnThis =""

  promptArray.each do |word| 
    if !(littleWords.include?(word)) #if word is not "little" then capitalize
      word.capitalize!
    end
    returnThis += word + " "
  end

  returnThis[0]=returnThis[0].upcase #upcase the first word

  return returnThis.strip #slice that last " "
end
