require 'test_helper'

class GigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gig = gigs(:one)
  end

  test "should get index" do
    get gigs_url
    assert_response :success
  end

  test "should get new" do
    get new_gig_url
    assert_response :success
  end

  test "should create gig" do
    assert_difference('Gig.count') do
      post gigs_url, params: { gig: { fee: @gig.fee, notes: @gig.notes, paid: @gig.paid, set_list_id: @gig.set_list_id, venue_id: @gig.venue_id } }
    end

    assert_redirected_to gig_url(Gig.last)
  end

  test "should show gig" do
    get gig_url(@gig)
    assert_response :success
  end

  test "should get edit" do
    get edit_gig_url(@gig)
    assert_response :success
  end

  test "should update gig" do
    patch gig_url(@gig), params: { gig: { fee: @gig.fee, notes: @gig.notes, paid: @gig.paid, set_list_id: @gig.set_list_id, venue_id: @gig.venue_id } }
    assert_redirected_to gig_url(@gig)
  end

  test "should destroy gig" do
    assert_difference('Gig.count', -1) do
      delete gig_url(@gig)
    end

    assert_redirected_to gigs_url
  end
end
