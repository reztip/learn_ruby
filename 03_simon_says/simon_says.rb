def echo(statement)
	statement
end

def shout(statement)
  statement.upcase
end

def repeat(statement, times=2)
 ([statement]*(times)).join(' ')
end

def start_of_word(statement, num_chars)
  return statement.slice(0, num_chars)
end

def first_word(statement)
	return statement.split[0]
end

def titleize(statement)
	banned_words = ['and', 'over', 'it', 'is', 'the']
	this_statement = statement.downcase.split
	x=this_statement.map {|x| (!banned_words.include?(x)) ? x.capitalize : x
	}
	x[0].capitalize!
	x.join(' ')
end