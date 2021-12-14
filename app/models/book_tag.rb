class BookTag < ApplicationRecord
  belongs_to :book
  belongs_to :tag

  def self.save_params(params)
    params[:book_id].each do |book|
      params[:tag_id].each do |tag|
        BookTag.find_or_create_by(:tag_id=>tag,:book_id=>book)
      end
    end
    true
  end
end
