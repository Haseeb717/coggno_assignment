# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


book1 = Book.create!(title: 'Book1',description: 'Book1',price: 10)
book2 = Book.create!(title: 'Book2',description: 'Book2',price: 10)
book3 = Book.create!(title: 'Book3',description: 'Book3',price: 10)

tag1 = Tag.create!(:title=>"Sports")
tag2 = Tag.create!(:title=>"News")
tag3 = Tag.create!(:title=>"Ruby")
tag4 = Tag.create!(:title=>"Php")
tag5 = Tag.create!(:title=>"Java")
tag6 = Tag.create!(:title=>"XML")
tag7 = Tag.create!(:title=>"Graphql")


BookTag.create!(:book_id=>book1.id,:tag_id=>tag1.id)
BookTag.create!(:book_id=>book1.id,:tag_id=>tag2.id)
BookTag.create!(:book_id=>book1.id,:tag_id=>tag3.id)
BookTag.create!(:book_id=>book2.id,:tag_id=>tag4.id)
BookTag.create!(:book_id=>book3.id,:tag_id=>tag5.id)