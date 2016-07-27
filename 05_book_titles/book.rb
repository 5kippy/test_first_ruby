#write your code here
# bulk of code also found in learn_ruby/03_simon_says/simon_says.rb
class Book
	def title=(title)
		titleArray = title.split(" ") #split title into an array
		littleWords = ['and','of','is','the','or','in','it','a','an'] #words not deemed significant by the title-masters of planet Title Omega 5
		returnThis =""

		titleArray.each do |word| 
			if !(littleWords.include?(word)) #if word is not "little" then capitalize
				word.capitalize!
			end
			returnThis += word + " "
		end

		returnThis[0] = returnThis[0].upcase #upcase the first word

		@title =  returnThis.strip #slice that last " "
	end

	def title
		@title
	end

end

