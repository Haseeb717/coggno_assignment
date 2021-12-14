require "test_helper"

class BookTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_tag = book_tags(:one)
  end

  test "should get index" do
    get book_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_book_tag_url
    assert_response :success
  end

  test "should create book_tag" do
    assert_difference('BookTag.count') do
      post book_tags_url, params: { book_tag: { book_id: @book_tag.book_id, tag_id: @book_tag.tag_id } }
    end

    assert_redirected_to book_tag_url(BookTag.last)
  end

  test "should show book_tag" do
    get book_tag_url(@book_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_tag_url(@book_tag)
    assert_response :success
  end

  test "should update book_tag" do
    patch book_tag_url(@book_tag), params: { book_tag: { book_id: @book_tag.book_id, tag_id: @book_tag.tag_id } }
    assert_redirected_to book_tag_url(@book_tag)
  end

  test "should destroy book_tag" do
    assert_difference('BookTag.count', -1) do
      delete book_tag_url(@book_tag)
    end

    assert_redirected_to book_tags_url
  end
end
