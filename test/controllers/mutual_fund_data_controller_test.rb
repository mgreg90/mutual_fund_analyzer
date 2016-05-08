require 'test_helper'

class MutualFundDataControllerTest < ActionController::TestCase
  setup do
    @mutual_fund_datum = mutual_fund_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mutual_fund_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mutual_fund_datum" do
    assert_difference('MutualFundDatum.count') do
      post :create, mutual_fund_datum: { raw_mstar_data: @mutual_fund_datum.raw_mstar_data, raw_yf_date: @mutual_fund_datum.raw_yf_date }
    end

    assert_redirected_to mutual_fund_datum_path(assigns(:mutual_fund_datum))
  end

  test "should show mutual_fund_datum" do
    get :show, id: @mutual_fund_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mutual_fund_datum
    assert_response :success
  end

  test "should update mutual_fund_datum" do
    patch :update, id: @mutual_fund_datum, mutual_fund_datum: { raw_mstar_data: @mutual_fund_datum.raw_mstar_data, raw_yf_date: @mutual_fund_datum.raw_yf_date }
    assert_redirected_to mutual_fund_datum_path(assigns(:mutual_fund_datum))
  end

  test "should destroy mutual_fund_datum" do
    assert_difference('MutualFundDatum.count', -1) do
      delete :destroy, id: @mutual_fund_datum
    end

    assert_redirected_to mutual_fund_data_path
  end
end
