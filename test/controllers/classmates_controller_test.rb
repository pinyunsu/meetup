require 'test_helper'

class ClassmatesControllerTest < ActionController::TestCase
  setup do
    @classmate = classmates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classmates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classmate" do
    assert_difference('Classmate.count') do
      post :create, classmate: { bike: @classmate.bike, gender: @classmate.gender, name: @classmate.name, school: @classmate.school }
    end

    assert_redirected_to classmate_path(assigns(:classmate))
  end

  test "should show classmate" do
    get :show, id: @classmate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classmate
    assert_response :success
  end

  test "should update classmate" do
    patch :update, id: @classmate, classmate: { bike: @classmate.bike, gender: @classmate.gender, name: @classmate.name, school: @classmate.school }
    assert_redirected_to classmate_path(assigns(:classmate))
  end

  test "should destroy classmate" do
    assert_difference('Classmate.count', -1) do
      delete :destroy, id: @classmate
    end

    assert_redirected_to classmates_path
  end
end
