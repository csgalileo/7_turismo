require 'test_helper'

class SitesServicesControllerTest < ActionController::TestCase
  setup do
    @sites_service = sites_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sites_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sites_service" do
    assert_difference('SitesService.count') do
      post :create, :sites_service => @sites_service.attributes
    end

    assert_redirected_to sites_service_path(assigns(:sites_service))
  end

  test "should show sites_service" do
    get :show, :id => @sites_service.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sites_service.to_param
    assert_response :success
  end

  test "should update sites_service" do
    put :update, :id => @sites_service.to_param, :sites_service => @sites_service.attributes
    assert_redirected_to sites_service_path(assigns(:sites_service))
  end

  test "should destroy sites_service" do
    assert_difference('SitesService.count', -1) do
      delete :destroy, :id => @sites_service.to_param
    end

    assert_redirected_to sites_services_path
  end
end
