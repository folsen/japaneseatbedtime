require 'test_helper'

class JapanesesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:japaneses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create japanese" do
    assert_difference('Japanese.count') do
      post :create, :japanese => { }
    end

    assert_redirected_to japanese_path(assigns(:japanese))
  end

  test "should show japanese" do
    get :show, :id => japaneses(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => japaneses(:one).id
    assert_response :success
  end

  test "should update japanese" do
    put :update, :id => japaneses(:one).id, :japanese => { }
    assert_redirected_to japanese_path(assigns(:japanese))
  end

  test "should destroy japanese" do
    assert_difference('Japanese.count', -1) do
      delete :destroy, :id => japaneses(:one).id
    end

    assert_redirected_to japaneses_path
  end
end
