def add (x, y)
	x + y
end

def subtract (x, y)
	x - y
end

def sum (array)
	tot = 0
	array.each do |i|
		tot += i
	end
	return tot
end

def multiply(x, y, *z)
	tot = x*y
	z.each do |i|
		tot *= i
	end
	return tot
end

def power(x,y)
	i = 1
	while i < y
		x*=x
		i += 1
	end
	return x
end

def factorial(x)
	if x <= 1
		1
	else
		x * factorial(x-1)
	end
end
		

