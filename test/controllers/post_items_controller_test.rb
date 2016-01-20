require 'test_helper'

class PostItemsControllerTest < ActionController::TestCase
  setup do
    @post_item = post_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_item" do
    assert_difference('PostItem.count') do
      post :create, post_item: { category: @post_item.category, description: @post_item.description, name: @post_item.name, quantity: @post_item.quantity }
    end

    assert_redirected_to post_item_path(assigns(:post_item))
  end

  test "should show post_item" do
    get :show, id: @post_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_item
    assert_response :success
  end

  test "should update post_item" do
    patch :update, id: @post_item, post_item: { category: @post_item.category, description: @post_item.description, name: @post_item.name, quantity: @post_item.quantity }
    assert_redirected_to post_item_path(assigns(:post_item))
  end

  test "should destroy post_item" do
    assert_difference('PostItem.count', -1) do
      delete :destroy, id: @post_item
    end

    assert_redirected_to post_items_path
  end
end
