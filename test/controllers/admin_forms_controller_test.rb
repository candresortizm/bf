require 'test_helper'

class AdminFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_forms_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_forms_create_url
    assert_response :success
  end

  test "should get index" do
    get admin_forms_index_url
    assert_response :success
  end

end
