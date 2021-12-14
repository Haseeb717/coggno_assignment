require "application_system_test_case"

class BookTagsTest < ApplicationSystemTestCase
  setup do
    @book_tag = book_tags(:one)
  end

  test "visiting the index" do
    visit book_tags_url
    assert_selector "h1", text: "Book Tags"
  end

  test "creating a Book tag" do
    visit book_tags_url
    click_on "New Book Tag"

    fill_in "Book", with: @book_tag.book_id
    fill_in "Tag", with: @book_tag.tag_id
    click_on "Create Book tag"

    assert_text "Book tag was successfully created"
    click_on "Back"
  end

  test "updating a Book tag" do
    visit book_tags_url
    click_on "Edit", match: :first

    fill_in "Book", with: @book_tag.book_id
    fill_in "Tag", with: @book_tag.tag_id
    click_on "Update Book tag"

    assert_text "Book tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Book tag" do
    visit book_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book tag was successfully destroyed"
  end
end
