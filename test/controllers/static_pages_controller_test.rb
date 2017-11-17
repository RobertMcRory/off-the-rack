require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get static_pages_main_url
    assert_response :success
  end

  test "should get catalog" do
    get static_pages_catalog_url
    assert_response :success
  end

end
