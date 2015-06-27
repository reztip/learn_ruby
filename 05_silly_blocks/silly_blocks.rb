def reverser
	ans = yield
	ans = ans.split.map{|word| word.reverse}
	ans.join(' ')
end

def adder(n=1)
	ans = yield

	ans+n
end

def repeater(n=1)
	n.times {
		yield
	}

end

