#write your code here
def add x, y 
	return (x+y)
end

def subtract x, y
	return (x-y)
end

def sum x
	i = 0;
	returnThisSum = 0;
	while i < x.count
		returnThisSum += x[i]
		i += 1 
	end
	return returnThisSum
end
