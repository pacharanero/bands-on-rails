require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song = songs(:one)
  end

  test "should get index" do
    get songs_url
    assert_response :success
  end

  test "should get new" do
    get new_song_url
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post songs_url, params: { song: { chart_url: @song.chart_url, duration: @song.duration, key: @song.key, performance_notes: @song.performance_notes, setlist_id: @song.setlist_id, title: @song.title, video_url: @song.video_url } }
    end

    assert_redirected_to song_url(Song.last)
  end

  test "should show song" do
    get song_url(@song)
    assert_response :success
  end

  test "should get edit" do
    get edit_song_url(@song)
    assert_response :success
  end

  test "should update song" do
    patch song_url(@song), params: { song: { chart_url: @song.chart_url, duration: @song.duration, key: @song.key, performance_notes: @song.performance_notes, setlist_id: @song.setlist_id, title: @song.title, video_url: @song.video_url } }
    assert_redirected_to song_url(@song)
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete song_url(@song)
    end

    assert_redirected_to songs_url
  end
end
