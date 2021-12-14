class BookTagsController < ApplicationController

  # GET /book_tags/new
  def new
    @book_tag = BookTag.new
  end

  # POST /book_tags or /book_tags.json
  def create
    @book_tag = BookTag.new(book_tag_params)

    respond_to do |format|
      byebug
      if BookTag.save_params(book_tag_params)
        format.html { redirect_to new_book_tag_path, notice: "Book tag was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def book_tag_params
      params.require(:book_tag).permit(book_id: [], tag_id: [])
    end
end
