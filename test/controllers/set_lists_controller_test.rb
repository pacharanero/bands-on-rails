require 'test_helper'

class SetListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @set_list = set_lists(:one)
  end

  test "should get index" do
    get set_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_set_list_url
    assert_response :success
  end

  test "should create set_list" do
    assert_difference('SetList.count') do
      post set_lists_url, params: { set_list: { notes: @set_list.notes, tags: @set_list.tags, title: @set_list.title } }
    end

    assert_redirected_to set_list_url(SetList.last)
  end

  test "should show set_list" do
    get set_list_url(@set_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_set_list_url(@set_list)
    assert_response :success
  end

  test "should update set_list" do
    patch set_list_url(@set_list), params: { set_list: { notes: @set_list.notes, tags: @set_list.tags, title: @set_list.title } }
    assert_redirected_to set_list_url(@set_list)
  end

  test "should destroy set_list" do
    assert_difference('SetList.count', -1) do
      delete set_list_url(@set_list)
    end

    assert_redirected_to set_lists_url
  end
end
