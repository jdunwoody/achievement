require 'test_helper'

class ProgressionsControllerTest < ActionController::TestCase
  setup do
    @progression = progressions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:progressions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create progression" do
    assert_difference('Progression.count') do
      post :create, progression: @progression.attributes
    end

    assert_redirected_to progression_path(assigns(:progression))
  end

  test "should show progression" do
    get :show, id: @progression.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @progression.to_param
    assert_response :success
  end

  test "should update progression" do
    put :update, id: @progression.to_param, progression: @progression.attributes
    assert_redirected_to progression_path(assigns(:progression))
  end

  test "should destroy progression" do
    assert_difference('Progression.count', -1) do
      delete :destroy, id: @progression.to_param
    end

    assert_redirected_to progressions_path
  end
end
