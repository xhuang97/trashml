require 'test_helper'

class TrashItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trash_item = trash_items(:one)
  end

  test "should get index" do
    get trash_items_url
    assert_response :success
  end

  test "should get new" do
    get new_trash_item_url
    assert_response :success
  end

  test "should create trash_item" do
    assert_difference('TrashItem.count') do
      post trash_items_url, params: { trash_item: { correctness: @trash_item.correctness, time_thrown: @trash_item.time_thrown } }
    end

    assert_redirected_to trash_item_url(TrashItem.last)
  end

  test "should show trash_item" do
    get trash_item_url(@trash_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_trash_item_url(@trash_item)
    assert_response :success
  end

  test "should update trash_item" do
    patch trash_item_url(@trash_item), params: { trash_item: { correctness: @trash_item.correctness, time_thrown: @trash_item.time_thrown } }
    assert_redirected_to trash_item_url(@trash_item)
  end

  test "should destroy trash_item" do
    assert_difference('TrashItem.count', -1) do
      delete trash_item_url(@trash_item)
    end

    assert_redirected_to trash_items_url
  end
end
