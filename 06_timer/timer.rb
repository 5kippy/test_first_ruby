 #write your code here

class Timer

	#set default attribute "seconds" to zero
	attr_reader :seconds

    def initialize()
    	@seconds = 0
  	end

  	def seconds=(seconds)
    	@seconds = seconds
  	end

	def seconds
		@seconds
	end

 	def time_string
 		hh = 0 #hours
 		mm = 0 #minutes
 		secondsLeft = 0
 		returnThis = ""

 		#convert hours
 		secondsLeft = seconds % 3600 #first divide by seconds in an hour (3600) and store the remainder
 		hh = (seconds - secondsLeft) / 3600 #then find how many full hours
		seconds = secondsLeft #now your left with the remaining seconds

 		#convert minutes (same logic as #convert hours)
 		secondsLeft = seconds % 60
 		mm = (seconds - secondsLeft) / 60 

 		ss = secondsLeft

 		returnThis = pad(hh) + ":" + pad(mm) + ":" + pad(ss)

 		return returnThis
 	end

 	#helper function that pads non-two-digit numbers (and returns strings)
 	def pad number
 		if number.to_s.length >= 2
 			return number.to_s
 		else
 			return "0" + number.to_s
 		end
 	end


end