require "test_helper"

class Api::SuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_supplier = api_suppliers(:one)
  end

  test "should get index" do
    get api_suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_api_supplier_url
    assert_response :success
  end

  test "should create api_supplier" do
    assert_difference("Api::Supplier.count") do
      post api_suppliers_url, params: { api_supplier: { name: @api_supplier.name } }
    end

    assert_redirected_to api_supplier_url(Api::Supplier.last)
  end

  test "should show api_supplier" do
    get api_supplier_url(@api_supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_supplier_url(@api_supplier)
    assert_response :success
  end

  test "should update api_supplier" do
    patch api_supplier_url(@api_supplier), params: { api_supplier: { name: @api_supplier.name } }
    assert_redirected_to api_supplier_url(@api_supplier)
  end

  test "should destroy api_supplier" do
    assert_difference("Api::Supplier.count", -1) do
      delete api_supplier_url(@api_supplier)
    end

    assert_redirected_to api_suppliers_url
  end
end
