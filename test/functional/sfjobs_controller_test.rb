require 'test_helper'

class SfjobsControllerTest < ActionController::TestCase
  setup do
    @sfjob = sfjobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sfjobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sfjob" do
    assert_difference('Sfjob.count') do
      post :create, sfjob: { company: @sfjob.company, description: @sfjob.description, name: @sfjob.name, price: @sfjob.price, pulished_date: @sfjob.pulished_date }
    end

    assert_redirected_to sfjob_path(assigns(:sfjob))
  end

  test "should show sfjob" do
    get :show, id: @sfjob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sfjob
    assert_response :success
  end

  test "should update sfjob" do
    put :update, id: @sfjob, sfjob: { company: @sfjob.company, description: @sfjob.description, name: @sfjob.name, price: @sfjob.price, pulished_date: @sfjob.pulished_date }
    assert_redirected_to sfjob_path(assigns(:sfjob))
  end

  test "should destroy sfjob" do
    assert_difference('Sfjob.count', -1) do
      delete :destroy, id: @sfjob
    end

    assert_redirected_to sfjobs_path
  end
end
