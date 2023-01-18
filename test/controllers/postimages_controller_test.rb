require "test_helper"

class PostimagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new,index,show" do
    get postimages_new,index,show_url
    assert_response :success
  end
end
