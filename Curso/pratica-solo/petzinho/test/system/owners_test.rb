require "application_system_test_case"

class OwnersTest < ApplicationSystemTestCase
  setup do
    @owner = owners(:one)
  end

  test "visiting the index" do
    visit owners_url
    assert_selector "h1", text: "Owners"
  end

  test "should create owner" do
    visit owners_url
    click_on "New owner"

    fill_in "Description", with: @owner.description
    click_on "Create Owner"

    assert_text "Owner was successfully created"
    click_on "Back"
  end

  test "should update Owner" do
    visit owner_url(@owner)
    click_on "Edit this owner", match: :first

    fill_in "Description", with: @owner.description
    click_on "Update Owner"

    assert_text "Owner was successfully updated"
    click_on "Back"
  end

  test "should destroy Owner" do
    visit owner_url(@owner)
    click_on "Destroy this owner", match: :first

    assert_text "Owner was successfully destroyed"
  end
end
