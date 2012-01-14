require 'test_helper'

class GuidelinesControllerTest < ActionController::TestCase
  setup do
    @guideline = guidelines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guidelines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guideline" do
    assert_difference('Guideline.count') do
      post :create, guideline: @guideline.attributes
    end

    assert_redirected_to guideline_path(assigns(:guideline))
  end

  test "should show guideline" do
    get :show, id: @guideline.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guideline.to_param
    assert_response :success
  end

  test "should update guideline" do
    put :update, id: @guideline.to_param, guideline: @guideline.attributes
    assert_redirected_to guideline_path(assigns(:guideline))
  end

  test "should destroy guideline" do
    assert_difference('Guideline.count', -1) do
      delete :destroy, id: @guideline.to_param
    end

    assert_redirected_to guidelines_path
  end
end
