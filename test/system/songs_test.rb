require "application_system_test_case"

class SongsTest < ApplicationSystemTestCase
  setup do
    @song = songs(:one)
  end

  test "visiting the index" do
    visit songs_url
    assert_selector "h1", text: "Songs"
  end

  test "creating a Song" do
    visit songs_url
    click_on "New Song"

    fill_in "Chart url", with: @song.chart_url
    fill_in "Duration", with: @song.duration
    fill_in "Key", with: @song.key
    fill_in "Performance notes", with: @song.performance_notes
    fill_in "Setlist", with: @song.setlist_id
    fill_in "Title", with: @song.title
    fill_in "Video url", with: @song.video_url
    click_on "Create Song"

    assert_text "Song was successfully created"
    click_on "Back"
  end

  test "updating a Song" do
    visit songs_url
    click_on "Edit", match: :first

    fill_in "Chart url", with: @song.chart_url
    fill_in "Duration", with: @song.duration
    fill_in "Key", with: @song.key
    fill_in "Performance notes", with: @song.performance_notes
    fill_in "Setlist", with: @song.setlist_id
    fill_in "Title", with: @song.title
    fill_in "Video url", with: @song.video_url
    click_on "Update Song"

    assert_text "Song was successfully updated"
    click_on "Back"
  end

  test "destroying a Song" do
    visit songs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Song was successfully destroyed"
  end
end
