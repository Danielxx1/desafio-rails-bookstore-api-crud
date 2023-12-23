require "test_helper"

class Api::AssembliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_assembly = api_assemblies(:one)
  end

  test "should get index" do
    get api_assemblies_url
    assert_response :success
  end

  test "should get new" do
    get new_api_assembly_url
    assert_response :success
  end

  test "should create api_assembly" do
    assert_difference("Api::Assembly.count") do
      post api_assemblies_url, params: { api_assembly: { book_id: @api_assembly.book_id, name: @api_assembly.name, part_id: @api_assembly.part_id } }
    end

    assert_redirected_to api_assembly_url(Api::Assembly.last)
  end

  test "should show api_assembly" do
    get api_assembly_url(@api_assembly)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_assembly_url(@api_assembly)
    assert_response :success
  end

  test "should update api_assembly" do
    patch api_assembly_url(@api_assembly), params: { api_assembly: { book_id: @api_assembly.book_id, name: @api_assembly.name, part_id: @api_assembly.part_id } }
    assert_redirected_to api_assembly_url(@api_assembly)
  end

  test "should destroy api_assembly" do
    assert_difference("Api::Assembly.count", -1) do
      delete api_assembly_url(@api_assembly)
    end

    assert_redirected_to api_assemblies_url
  end
end
