require "test_helper"

class Api::BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_book = api_books(:one)
  end

  test "should get index" do
    get api_books_url
    assert_response :success
  end

  test "should get new" do
    get new_api_book_url
    assert_response :success
  end

  test "should create api_book" do
    assert_difference("Api::Book.count") do
      post api_books_url, params: { api_book: { title: @api_book.title } }
    end

    assert_redirected_to api_book_url(Api::Book.last)
  end

  test "should show api_book" do
    get api_book_url(@api_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_book_url(@api_book)
    assert_response :success
  end

  test "should update api_book" do
    patch api_book_url(@api_book), params: { api_book: { title: @api_book.title } }
    assert_redirected_to api_book_url(@api_book)
  end

  test "should destroy api_book" do
    assert_difference("Api::Book.count", -1) do
      delete api_book_url(@api_book)
    end

    assert_redirected_to api_books_url
  end
end
