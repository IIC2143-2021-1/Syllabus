require 'test_helper'

class HomePageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_page_index_url
    assert_response :success
  end

end
