require "application_system_test_case"

class AttributeOptionsTest < ApplicationSystemTestCase
  setup do
    @attribute_option = attribute_options(:one)
  end

  test "visiting the index" do
    visit attribute_options_url
    assert_selector "h1", text: "Attribute Options"
  end

  test "creating a Attribute option" do
    visit attribute_options_url
    click_on "New Attribute Option"

    fill_in "Custome attributes", with: @attribute_option.custome_attributes_id
    fill_in "Name", with: @attribute_option.name
    click_on "Create Attribute option"

    assert_text "Attribute option was successfully created"
    click_on "Back"
  end

  test "updating a Attribute option" do
    visit attribute_options_url
    click_on "Edit", match: :first

    fill_in "Custome attributes", with: @attribute_option.custome_attributes_id
    fill_in "Name", with: @attribute_option.name
    click_on "Update Attribute option"

    assert_text "Attribute option was successfully updated"
    click_on "Back"
  end

  test "destroying a Attribute option" do
    visit attribute_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attribute option was successfully destroyed"
  end
end
