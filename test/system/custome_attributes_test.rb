require "application_system_test_case"

class CustomeAttributesTest < ApplicationSystemTestCase
  setup do
    @custome_attribute = custome_attributes(:one)
  end

  test "visiting the index" do
    visit custome_attributes_url
    assert_selector "h1", text: "Custome Attributes"
  end

  test "creating a Custome attribute" do
    visit custome_attributes_url
    click_on "New Custome Attribute"

    fill_in "Field name", with: @custome_attribute.field_name
    fill_in "Field type", with: @custome_attribute.field_type
    fill_in "Project", with: @custome_attribute.project_id
    check "Required" if @custome_attribute.required
    click_on "Create Custome attribute"

    assert_text "Custome attribute was successfully created"
    click_on "Back"
  end

  test "updating a Custome attribute" do
    visit custome_attributes_url
    click_on "Edit", match: :first

    fill_in "Field name", with: @custome_attribute.field_name
    fill_in "Field type", with: @custome_attribute.field_type
    fill_in "Project", with: @custome_attribute.project_id
    check "Required" if @custome_attribute.required
    click_on "Update Custome attribute"

    assert_text "Custome attribute was successfully updated"
    click_on "Back"
  end

  test "destroying a Custome attribute" do
    visit custome_attributes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custome attribute was successfully destroyed"
  end
end
