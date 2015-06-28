class Book
	attr_reader :title
	@@banned_words = ['the', 'to', 'a', 'an', 'and', 'of', 'in']
	def initialize(title="")
		@title = title
	end
	def title=(new_title)
 		@title=titleize(new_title)
	end

	def titleize(phrase)
      x=(phrase.split.map {|word| make_title(word)})
      x[0].capitalize!
      x=x.join(' ')
      x

	end

	def make_title(word)

		@@banned_words.include?(word) ? word : word.capitalize
	end
end

b = Book.new
b.title = "The Damning of Joe"