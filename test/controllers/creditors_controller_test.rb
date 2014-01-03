require 'test_helper'

class CreditorsControllerTest < ActionController::TestCase
  setup do
    @creditor = creditors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creditors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creditor" do
    assert_difference('Creditor.count') do
      post :create, creditor: { amount: @creditor.amount, description: @creditor.description, name: @creditor.name }
    end

    assert_redirected_to creditor_path(assigns(:creditor))
  end

  test "should show creditor" do
    get :show, id: @creditor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creditor
    assert_response :success
  end

  test "should update creditor" do
    patch :update, id: @creditor, creditor: { amount: @creditor.amount, description: @creditor.description, name: @creditor.name }
    assert_redirected_to creditor_path(assigns(:creditor))
  end

  test "should destroy creditor" do
    assert_difference('Creditor.count', -1) do
      delete :destroy, id: @creditor
    end

    assert_redirected_to creditors_path
  end
end
