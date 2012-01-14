require 'test_helper'

class VaatimusControllerTest < ActionController::TestCase
  setup do
    @vaatimu = vaatimus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vaatimus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vaatimu" do
    assert_difference('Vaatimus.count') do
      post :create, vaatimu: @vaatimu.attributes
    end

    assert_redirected_to vaatimu_path(assigns(:vaatimu))
  end

  test "should show vaatimu" do
    get :show, id: @vaatimu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vaatimu.to_param
    assert_response :success
  end

  test "should update vaatimu" do
    put :update, id: @vaatimu.to_param, vaatimu: @vaatimu.attributes
    assert_redirected_to vaatimu_path(assigns(:vaatimu))
  end

  test "should destroy vaatimu" do
    assert_difference('Vaatimus.count', -1) do
      delete :destroy, id: @vaatimu.to_param
    end

    assert_redirected_to vaatimus_index_path
  end
end
