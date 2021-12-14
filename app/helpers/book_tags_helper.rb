module BookTagsHelper
	def books_hash
		Book.all.map{ |book| [book.title,book.id] }.to_h
	end
end
