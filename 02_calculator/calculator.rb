def add(a,b)
	a+b
end

def subtract(a,b)
	return a-b
end

def sum(array)
	array.inject(0) {|sum, x| sum+x}

end

def multiply(*numbers)
	numbers.inject(1) {|product, x| product * x}
end

def power(a,b)
  a**b
end


def factorial(n)
	if n<2
		return 1
	end

	return n.downto(1).reduce(:*)

end