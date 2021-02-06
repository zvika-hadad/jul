require "test_helper"

class CatalogControllerTest < ActionDispatch::IntegrationTest
  test "should get products" do
    get catalog_products_url
    assert_response :success
  end
end
