require "application_system_test_case"

class Api::BooksTest < ApplicationSystemTestCase
  setup do
    @api_book = api_books(:one)
  end

  test "visiting the index" do
    visit api_books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit api_books_url
    click_on "New book"

    fill_in "Title", with: @api_book.title
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit api_book_url(@api_book)
    click_on "Edit this book", match: :first

    fill_in "Title", with: @api_book.title
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit api_book_url(@api_book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
