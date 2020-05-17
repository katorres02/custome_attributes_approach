require 'test_helper'

class AttributeOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attribute_option = attribute_options(:one)
  end

  test "should get index" do
    get attribute_options_url
    assert_response :success
  end

  test "should get new" do
    get new_attribute_option_url
    assert_response :success
  end

  test "should create attribute_option" do
    assert_difference('AttributeOption.count') do
      post attribute_options_url, params: { attribute_option: { custome_attributes_id: @attribute_option.custome_attributes_id, name: @attribute_option.name } }
    end

    assert_redirected_to attribute_option_url(AttributeOption.last)
  end

  test "should show attribute_option" do
    get attribute_option_url(@attribute_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_attribute_option_url(@attribute_option)
    assert_response :success
  end

  test "should update attribute_option" do
    patch attribute_option_url(@attribute_option), params: { attribute_option: { custome_attributes_id: @attribute_option.custome_attributes_id, name: @attribute_option.name } }
    assert_redirected_to attribute_option_url(@attribute_option)
  end

  test "should destroy attribute_option" do
    assert_difference('AttributeOption.count', -1) do
      delete attribute_option_url(@attribute_option)
    end

    assert_redirected_to attribute_options_url
  end
end
