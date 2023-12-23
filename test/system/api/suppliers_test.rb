require "application_system_test_case"

class Api::SuppliersTest < ApplicationSystemTestCase
  setup do
    @api_supplier = api_suppliers(:one)
  end

  test "visiting the index" do
    visit api_suppliers_url
    assert_selector "h1", text: "Suppliers"
  end

  test "should create supplier" do
    visit api_suppliers_url
    click_on "New supplier"

    fill_in "Name", with: @api_supplier.name
    click_on "Create Supplier"

    assert_text "Supplier was successfully created"
    click_on "Back"
  end

  test "should update Supplier" do
    visit api_supplier_url(@api_supplier)
    click_on "Edit this supplier", match: :first

    fill_in "Name", with: @api_supplier.name
    click_on "Update Supplier"

    assert_text "Supplier was successfully updated"
    click_on "Back"
  end

  test "should destroy Supplier" do
    visit api_supplier_url(@api_supplier)
    click_on "Destroy this supplier", match: :first

    assert_text "Supplier was successfully destroyed"
  end
end
