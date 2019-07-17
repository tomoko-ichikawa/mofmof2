require 'test_helper'

class RentalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rentals_index_url
    assert_response :success
  end

end
