require 'test_helper'

class DemoTestsControllerTest < ActionController::TestCase
  setup do
    @demo_test = demo_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demo_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demo_test" do
    assert_difference('DemoTest.count') do
      post :create, demo_test: { age: @demo_test.age, name: @demo_test.name }
    end

    assert_redirected_to demo_test_path(assigns(:demo_test))
  end

  test "should show demo_test" do
    get :show, id: @demo_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demo_test
    assert_response :success
  end

  test "should update demo_test" do
    put :update, id: @demo_test, demo_test: { age: @demo_test.age, name: @demo_test.name }
    assert_redirected_to demo_test_path(assigns(:demo_test))
  end

  test "should destroy demo_test" do
    assert_difference('DemoTest.count', -1) do
      delete :destroy, id: @demo_test
    end

    assert_redirected_to demo_tests_path
  end
end
