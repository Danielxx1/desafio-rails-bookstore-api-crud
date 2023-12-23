require "test_helper"

class Api::AuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_author = api_authors(:one)
  end

  test "should get index" do
    get api_authors_url
    assert_response :success
  end

  test "should get new" do
    get new_api_author_url
    assert_response :success
  end

  test "should create api_author" do
    assert_difference("Api::Author.count") do
      post api_authors_url, params: { api_author: { name: @api_author.name } }
    end

    assert_redirected_to api_author_url(Api::Author.last)
  end

  test "should show api_author" do
    get api_author_url(@api_author)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_author_url(@api_author)
    assert_response :success
  end

  test "should update api_author" do
    patch api_author_url(@api_author), params: { api_author: { name: @api_author.name } }
    assert_redirected_to api_author_url(@api_author)
  end

  test "should destroy api_author" do
    assert_difference("Api::Author.count", -1) do
      delete api_author_url(@api_author)
    end

    assert_redirected_to api_authors_url
  end
end
