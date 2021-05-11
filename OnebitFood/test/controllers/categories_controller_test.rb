require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index--skip-routes" do
    get categories_index--skip-routes_url
    assert_response :success
  end
end
