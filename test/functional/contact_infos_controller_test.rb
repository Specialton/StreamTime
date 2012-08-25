require 'test_helper'

class ContactInfosControllerTest < ActionController::TestCase
  setup do
    @contact_info = contact_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_info" do
    assert_difference('ContactInfo.count') do
      post :create, contact_info: { city: @contact_info.city, email: @contact_info.email, phone: @contact_info.phone, state: @contact_info.state, street_address_1: @contact_info.street_address_1, street_address_2: @contact_info.street_address_2, zip: @contact_info.zip }
    end

    assert_redirected_to contact_info_path(assigns(:contact_info))
  end

  test "should show contact_info" do
    get :show, id: @contact_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_info
    assert_response :success
  end

  test "should update contact_info" do
    put :update, id: @contact_info, contact_info: { city: @contact_info.city, email: @contact_info.email, phone: @contact_info.phone, state: @contact_info.state, street_address_1: @contact_info.street_address_1, street_address_2: @contact_info.street_address_2, zip: @contact_info.zip }
    assert_redirected_to contact_info_path(assigns(:contact_info))
  end

  test "should destroy contact_info" do
    assert_difference('ContactInfo.count', -1) do
      delete :destroy, id: @contact_info
    end

    assert_redirected_to contact_infos_path
  end
end
