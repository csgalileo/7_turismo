require 'test_helper'

class SitesActivitiesControllerTest < ActionController::TestCase
  setup do
    @sites_activity = sites_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sites_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sites_activity" do
    assert_difference('SitesActivity.count') do
      post :create, :sites_activity => @sites_activity.attributes
    end

    assert_redirected_to sites_activity_path(assigns(:sites_activity))
  end

  test "should show sites_activity" do
    get :show, :id => @sites_activity.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sites_activity.to_param
    assert_response :success
  end

  test "should update sites_activity" do
    put :update, :id => @sites_activity.to_param, :sites_activity => @sites_activity.attributes
    assert_redirected_to sites_activity_path(assigns(:sites_activity))
  end

  test "should destroy sites_activity" do
    assert_difference('SitesActivity.count', -1) do
      delete :destroy, :id => @sites_activity.to_param
    end

    assert_redirected_to sites_activities_path
  end
end
