class Book < ApplicationRecord
	has_many :book_tags
  has_many :tags, through: :book_tags

  scope :by_price, lambda { |price| where('color >?',price)}
	scope :by_title, lambda { |title| where('lower(title) LIKE ?',"%#{title.downcase}%") }
	scope :by_tags_title, lambda { |title| where('lower(tags.title) LIKE ?',"%{title.downcase}%")}
end
