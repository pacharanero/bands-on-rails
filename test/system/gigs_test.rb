require "application_system_test_case"

class GigsTest < ApplicationSystemTestCase
  setup do
    @gig = gigs(:one)
  end

  test "visiting the index" do
    visit gigs_url
    assert_selector "h1", text: "Gigs"
  end

  test "creating a Gig" do
    visit gigs_url
    click_on "New Gig"

    fill_in "Fee", with: @gig.fee
    fill_in "Notes", with: @gig.notes
    check "Paid" if @gig.paid
    fill_in "Set list", with: @gig.set_list_id
    fill_in "Venue", with: @gig.venue_id
    click_on "Create Gig"

    assert_text "Gig was successfully created"
    click_on "Back"
  end

  test "updating a Gig" do
    visit gigs_url
    click_on "Edit", match: :first

    fill_in "Fee", with: @gig.fee
    fill_in "Notes", with: @gig.notes
    check "Paid" if @gig.paid
    fill_in "Set list", with: @gig.set_list_id
    fill_in "Venue", with: @gig.venue_id
    click_on "Update Gig"

    assert_text "Gig was successfully updated"
    click_on "Back"
  end

  test "destroying a Gig" do
    visit gigs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gig was successfully destroyed"
  end
end
