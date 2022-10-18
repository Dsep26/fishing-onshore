require "test_helper"

class FishingSpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fishing_spots_index_url
    assert_response :success
  end

  test "should get show" do
    get fishing_spots_show_url
    assert_response :success
  end
end
