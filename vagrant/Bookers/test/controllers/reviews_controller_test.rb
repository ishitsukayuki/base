require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get reviews_home_url
    assert_response :success
  end

  test "should get index" do
    get reviews_index_url
    assert_response :success
  end

  test "should get show" do
    get reviews_show_url
    assert_response :success
  end

  test "should get edit" do
    get reviews_edit_url
    assert_response :success
  end

end
