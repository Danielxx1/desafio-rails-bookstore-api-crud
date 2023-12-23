require "application_system_test_case"

class Api::AuthorsTest < ApplicationSystemTestCase
  setup do
    @api_author = api_authors(:one)
  end

  test "visiting the index" do
    visit api_authors_url
    assert_selector "h1", text: "Authors"
  end

  test "should create author" do
    visit api_authors_url
    click_on "New author"

    fill_in "Name", with: @api_author.name
    click_on "Create Author"

    assert_text "Author was successfully created"
    click_on "Back"
  end

  test "should update Author" do
    visit api_author_url(@api_author)
    click_on "Edit this author", match: :first

    fill_in "Name", with: @api_author.name
    click_on "Update Author"

    assert_text "Author was successfully updated"
    click_on "Back"
  end

  test "should destroy Author" do
    visit api_author_url(@api_author)
    click_on "Destroy this author", match: :first

    assert_text "Author was successfully destroyed"
  end
end
