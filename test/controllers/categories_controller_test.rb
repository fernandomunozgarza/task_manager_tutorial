require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    category = categories(:one)
    get categories_url
    assert_response :success
  end

  test "should get show" do
    category = categories(:one)
    get categories_url(category)
    assert_response :success
  end

  test "should get new" do
    category = categories(:one)
    get new_category_url
    assert_response :success
  end

  test "should get edit" do
    category = categories(:one)
    get edit_category_url(category)
    assert_response :success
  end

  test "should get delete" do
    category = categories(:one)
    get delete_category_url(category)
    assert_response :success
  end
end
