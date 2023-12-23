require "application_system_test_case"

class Api::PartsTest < ApplicationSystemTestCase
  setup do
    @api_part = api_parts(:one)
  end

  test "visiting the index" do
    visit api_parts_url
    assert_selector "h1", text: "Parts"
  end

  test "should create part" do
    visit api_parts_url
    click_on "New part"

    fill_in "Name", with: @api_part.name
    fill_in "Supplier", with: @api_part.supplier_id
    click_on "Create Part"

    assert_text "Part was successfully created"
    click_on "Back"
  end

  test "should update Part" do
    visit api_part_url(@api_part)
    click_on "Edit this part", match: :first

    fill_in "Name", with: @api_part.name
    fill_in "Supplier", with: @api_part.supplier_id
    click_on "Update Part"

    assert_text "Part was successfully updated"
    click_on "Back"
  end

  test "should destroy Part" do
    visit api_part_url(@api_part)
    click_on "Destroy this part", match: :first

    assert_text "Part was successfully destroyed"
  end
end
