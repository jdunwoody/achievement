require 'test_helper'

class SkillTreesControllerTest < ActionController::TestCase
  setup do
    @skill_tree = skill_trees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_trees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_tree" do
    assert_difference('SkillTree.count') do
      post :create, skill_tree: @skill_tree.attributes
    end

    assert_redirected_to skill_tree_path(assigns(:skill_tree))
  end

  test "should show skill_tree" do
    get :show, id: @skill_tree.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skill_tree.to_param
    assert_response :success
  end

  test "should update skill_tree" do
    put :update, id: @skill_tree.to_param, skill_tree: @skill_tree.attributes
    assert_redirected_to skill_tree_path(assigns(:skill_tree))
  end

  test "should destroy skill_tree" do
    assert_difference('SkillTree.count', -1) do
      delete :destroy, id: @skill_tree.to_param
    end

    assert_redirected_to skill_trees_path
  end
end
