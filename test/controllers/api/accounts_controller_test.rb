require "test_helper"

class Api::AccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_account = api_accounts(:one)
  end

  test "should get index" do
    get api_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_api_account_url
    assert_response :success
  end

  test "should create api_account" do
    assert_difference("Api::Account.count") do
      post api_accounts_url, params: { api_account: { number: @api_account.number, supplier_id: @api_account.supplier_id } }
    end

    assert_redirected_to api_account_url(Api::Account.last)
  end

  test "should show api_account" do
    get api_account_url(@api_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_account_url(@api_account)
    assert_response :success
  end

  test "should update api_account" do
    patch api_account_url(@api_account), params: { api_account: { number: @api_account.number, supplier_id: @api_account.supplier_id } }
    assert_redirected_to api_account_url(@api_account)
  end

  test "should destroy api_account" do
    assert_difference("Api::Account.count", -1) do
      delete api_account_url(@api_account)
    end

    assert_redirected_to api_accounts_url
  end
end
