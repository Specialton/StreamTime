require 'test_helper'

class ShirtSizesControllerTest < ActionController::TestCase
  setup do
    @shirt_size = shirt_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shirt_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shirt_size" do
    assert_difference('ShirtSize.count') do
      post :create, shirt_size: { size: @shirt_size.size }
    end

    assert_redirected_to shirt_size_path(assigns(:shirt_size))
  end

  test "should show shirt_size" do
    get :show, id: @shirt_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shirt_size
    assert_response :success
  end

  test "should update shirt_size" do
    put :update, id: @shirt_size, shirt_size: { size: @shirt_size.size }
    assert_redirected_to shirt_size_path(assigns(:shirt_size))
  end

  test "should destroy shirt_size" do
    assert_difference('ShirtSize.count', -1) do
      delete :destroy, id: @shirt_size
    end

    assert_redirected_to shirt_sizes_path
  end
end
