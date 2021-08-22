require "test_helper"

class DoseControllerTest < ActionDispatch::IntegrationTest
  test "should get amount:float" do
    get dose_amount:float_url
    assert_response :success
  end

  test "should get medicine_id:integer" do
    get dose_medicine_id:integer_url
    assert_response :success
  end
end
