namespace :mailer do
	task :most_tagged_books => :environment do
		books = Book.left_joins(:tags).group(:id).order('COUNT(tags.id) DESC').limit(3)
		byebug
		BookMailer.most_tagged(books: books).deliver_now
	end
end