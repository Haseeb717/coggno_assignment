class BookMailer < ApplicationMailer
	default from: 'notifications@example.com'

  def most_tagged(books:)
  	@books = books
    @to = 'to@example.com'
    @name = 'XYZ'
    mail(to: @to, subject: 'Most Tagged Books')
  end
end
