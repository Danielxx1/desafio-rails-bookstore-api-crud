require "test_helper"

class Api::PartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_part = api_parts(:one)
  end

  test "should get index" do
    get api_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_api_part_url
    assert_response :success
  end

  test "should create api_part" do
    assert_difference("Api::Part.count") do
      post api_parts_url, params: { api_part: { name: @api_part.name, supplier_id: @api_part.supplier_id } }
    end

    assert_redirected_to api_part_url(Api::Part.last)
  end

  test "should show api_part" do
    get api_part_url(@api_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_part_url(@api_part)
    assert_response :success
  end

  test "should update api_part" do
    patch api_part_url(@api_part), params: { api_part: { name: @api_part.name, supplier_id: @api_part.supplier_id } }
    assert_redirected_to api_part_url(@api_part)
  end

  test "should destroy api_part" do
    assert_difference("Api::Part.count", -1) do
      delete api_part_url(@api_part)
    end

    assert_redirected_to api_parts_url
  end
end
