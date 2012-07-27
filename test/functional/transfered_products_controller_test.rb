require 'test_helper'

class TransferedProductsControllerTest < ActionController::TestCase
  setup do
    @transfered_product = transfered_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transfered_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transfered_product" do
    assert_difference('TransferedProduct.count') do
      post :create, transfered_product: { quantity: @transfered_product.quantity }
    end

    assert_redirected_to transfered_product_path(assigns(:transfered_product))
  end

  test "should show transfered_product" do
    get :show, id: @transfered_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transfered_product
    assert_response :success
  end

  test "should update transfered_product" do
    put :update, id: @transfered_product, transfered_product: { quantity: @transfered_product.quantity }
    assert_redirected_to transfered_product_path(assigns(:transfered_product))
  end

  test "should destroy transfered_product" do
    assert_difference('TransferedProduct.count', -1) do
      delete :destroy, id: @transfered_product
    end

    assert_redirected_to transfered_products_path
  end
end
