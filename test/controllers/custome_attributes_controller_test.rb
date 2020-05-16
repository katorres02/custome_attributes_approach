require 'test_helper'

class CustomeAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custome_attribute = custome_attributes(:one)
  end

  test "should get index" do
    get custome_attributes_url
    assert_response :success
  end

  test "should get new" do
    get new_custome_attribute_url
    assert_response :success
  end

  test "should create custome_attribute" do
    assert_difference('CustomeAttribute.count') do
      post custome_attributes_url, params: { custome_attribute: { field_name: @custome_attribute.field_name, field_type: @custome_attribute.field_type, project_id: @custome_attribute.project_id, required: @custome_attribute.required } }
    end

    assert_redirected_to custome_attribute_url(CustomeAttribute.last)
  end

  test "should show custome_attribute" do
    get custome_attribute_url(@custome_attribute)
    assert_response :success
  end

  test "should get edit" do
    get edit_custome_attribute_url(@custome_attribute)
    assert_response :success
  end

  test "should update custome_attribute" do
    patch custome_attribute_url(@custome_attribute), params: { custome_attribute: { field_name: @custome_attribute.field_name, field_type: @custome_attribute.field_type, project_id: @custome_attribute.project_id, required: @custome_attribute.required } }
    assert_redirected_to custome_attribute_url(@custome_attribute)
  end

  test "should destroy custome_attribute" do
    assert_difference('CustomeAttribute.count', -1) do
      delete custome_attribute_url(@custome_attribute)
    end

    assert_redirected_to custome_attributes_url
  end
end
