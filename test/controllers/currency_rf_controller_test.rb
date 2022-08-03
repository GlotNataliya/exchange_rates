require "test_helper"

class CurrencyRfControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get currency_rf_index_url
    assert_response :success
  end
end
