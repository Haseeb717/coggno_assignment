class BooksController < ApplicationController
  # GET /books or /books.json
  def index
    @books = Book.all
    @books = @books.by_price(params[:price]) if params[:price].present?
    @books = @books.by_title(params[:title]) if params[:title].present?
    @books = @books.by_tags_title(params[:tags]) if params[:tags].present?
  end

  private
    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title, :description, :price)
    end
end
