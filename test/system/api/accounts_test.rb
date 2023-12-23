require "application_system_test_case"

class Api::AccountsTest < ApplicationSystemTestCase
  setup do
    @api_account = api_accounts(:one)
  end

  test "visiting the index" do
    visit api_accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "should create account" do
    visit api_accounts_url
    click_on "New account"

    fill_in "Number", with: @api_account.number
    fill_in "Supplier", with: @api_account.supplier_id
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "should update Account" do
    visit api_account_url(@api_account)
    click_on "Edit this account", match: :first

    fill_in "Number", with: @api_account.number
    fill_in "Supplier", with: @api_account.supplier_id
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "should destroy Account" do
    visit api_account_url(@api_account)
    click_on "Destroy this account", match: :first

    assert_text "Account was successfully destroyed"
  end
end
