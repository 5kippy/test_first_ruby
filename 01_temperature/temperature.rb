#write your code here

def ftoc temperatureInFahr
	magicNumber = 5 / 9.0 #dividing by 9.0 ensures magicNumber is a float variable
	return ((temperatureInFahr.to_f - 32) * magicNumber)
end

def ctof temperatureInCelc
	magicNumber = 9/ 5.0
	return ((temperatureInCelc.to_f * magicNumber) + 32)
end

