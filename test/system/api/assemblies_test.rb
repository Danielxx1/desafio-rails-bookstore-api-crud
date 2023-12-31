require "application_system_test_case"

class Api::AssembliesTest < ApplicationSystemTestCase
  setup do
    @api_assembly = api_assemblies(:one)
  end

  test "visiting the index" do
    visit api_assemblies_url
    assert_selector "h1", text: "Assemblies"
  end

  test "should create assembly" do
    visit api_assemblies_url
    click_on "New assembly"

    fill_in "Book", with: @api_assembly.book_id
    fill_in "Name", with: @api_assembly.name
    fill_in "Part", with: @api_assembly.part_id
    click_on "Create Assembly"

    assert_text "Assembly was successfully created"
    click_on "Back"
  end

  test "should update Assembly" do
    visit api_assembly_url(@api_assembly)
    click_on "Edit this assembly", match: :first

    fill_in "Book", with: @api_assembly.book_id
    fill_in "Name", with: @api_assembly.name
    fill_in "Part", with: @api_assembly.part_id
    click_on "Update Assembly"

    assert_text "Assembly was successfully updated"
    click_on "Back"
  end

  test "should destroy Assembly" do
    visit api_assembly_url(@api_assembly)
    click_on "Destroy this assembly", match: :first

    assert_text "Assembly was successfully destroyed"
  end
end
