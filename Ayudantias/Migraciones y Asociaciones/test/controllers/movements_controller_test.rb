require 'test_helper'

class MovementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get movements_new_url
    assert_response :success
  end

  test "should get index" do
    get movements_index_url
    assert_response :success
  end

  test "should get show" do
    get movements_show_url
    assert_response :success
  end

  test "should get edit" do
    get movements_edit_url
    assert_response :success
  end

end
