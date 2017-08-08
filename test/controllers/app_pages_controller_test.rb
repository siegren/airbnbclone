require 'test_helper'

class AppPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_pages_index_url
    assert_response :success
  end

end
