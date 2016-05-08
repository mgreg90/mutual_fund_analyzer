require 'test_helper'

class MutualFundListsControllerTest < ActionController::TestCase
  setup do
    @mutual_fund_list = mutual_fund_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mutual_fund_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mutual_fund_list" do
    assert_difference('MutualFundList.count') do
      post :create, mutual_fund_list: { ticker_list: @mutual_fund_list.ticker_list }
    end

    assert_redirected_to mutual_fund_list_path(assigns(:mutual_fund_list))
  end

  test "should show mutual_fund_list" do
    get :show, id: @mutual_fund_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mutual_fund_list
    assert_response :success
  end

  test "should update mutual_fund_list" do
    patch :update, id: @mutual_fund_list, mutual_fund_list: { ticker_list: @mutual_fund_list.ticker_list }
    assert_redirected_to mutual_fund_list_path(assigns(:mutual_fund_list))
  end

  test "should destroy mutual_fund_list" do
    assert_difference('MutualFundList.count', -1) do
      delete :destroy, id: @mutual_fund_list
    end

    assert_redirected_to mutual_fund_lists_path
  end
end
