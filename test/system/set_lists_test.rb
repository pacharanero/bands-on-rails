require "application_system_test_case"

class SetListsTest < ApplicationSystemTestCase
  setup do
    @set_list = set_lists(:one)
  end

  test "visiting the index" do
    visit set_lists_url
    assert_selector "h1", text: "Set Lists"
  end

  test "creating a Set list" do
    visit set_lists_url
    click_on "New Set List"

    fill_in "Notes", with: @set_list.notes
    fill_in "Tags", with: @set_list.tags
    fill_in "Title", with: @set_list.title
    click_on "Create Set list"

    assert_text "Set list was successfully created"
    click_on "Back"
  end

  test "updating a Set list" do
    visit set_lists_url
    click_on "Edit", match: :first

    fill_in "Notes", with: @set_list.notes
    fill_in "Tags", with: @set_list.tags
    fill_in "Title", with: @set_list.title
    click_on "Update Set list"

    assert_text "Set list was successfully updated"
    click_on "Back"
  end

  test "destroying a Set list" do
    visit set_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Set list was successfully destroyed"
  end
end
