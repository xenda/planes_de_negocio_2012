require 'test_helper'

class BusinessPlanesControllerTest < ActionController::TestCase
  setup do
    @business_plane = business_planes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_planes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_plane" do
    assert_difference('BusinessPlane.count') do
      post :create, business_plane: { acknowledgment: @business_plane.acknowledgment, category: @business_plane.category, duration: @business_plane.duration, gross_margin: @business_plane.gross_margin, roi: @business_plane.roi, title: @business_plane.title, total_investment: @business_plane.total_investment, vision: @business_plane.vision }
    end

    assert_redirected_to business_plane_path(assigns(:business_plane))
  end

  test "should show business_plane" do
    get :show, id: @business_plane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_plane
    assert_response :success
  end

  test "should update business_plane" do
    put :update, id: @business_plane, business_plane: { acknowledgment: @business_plane.acknowledgment, category: @business_plane.category, duration: @business_plane.duration, gross_margin: @business_plane.gross_margin, roi: @business_plane.roi, title: @business_plane.title, total_investment: @business_plane.total_investment, vision: @business_plane.vision }
    assert_redirected_to business_plane_path(assigns(:business_plane))
  end

  test "should destroy business_plane" do
    assert_difference('BusinessPlane.count', -1) do
      delete :destroy, id: @business_plane
    end

    assert_redirected_to business_planes_path
  end
end
