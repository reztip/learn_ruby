$vowels = ['a', 'e', 'i', 'o', 'u']
$consonants = ('a'..'z').to_a - $vowels

def translate(phrase)
	words = phrase.downcase.split()
	(words.map {|word| translate_single_word(word)}).join(' ')
end

def translate_single_word(word)
	word.gsub!('qu', 'q')
	if starts_with_vowel(word)
	  return word+'ay'
	
    x = ''
	elsif starts_with_one_consonant(word)
		x = word[1..-1] + word[0...1] + 'ay'

	

	elsif starts_with_two_consonants(word)
		x = word[2..-1] + word[0..1] + 'ay'
	

	elsif starts_with_three_consonants(word)
		x = word[3..-1] + word[0..2] + 'ay'
	end

	x.gsub!('q', 'qu')
	return x
	#also need to handle qu case


end

def starts_with_vowel(word)
  return word.start_with?(*$vowels)
end

def starts_with_one_consonant(word)
	return $consonants.include?(word[0...1]) && $vowels.include?(word[1...2])
end

def starts_with_two_consonants(word)
	return $consonants.include?(word[0...1]) && $consonants.include?(word[1...2]) && $vowels.include?(word[2...3])
end

def starts_with_three_consonants(word)
	return $consonants.include?(word[0...1]) && $consonants.include?(word[1...2]) && $consonants.include?(word[2...3])
end