require 'test_helper'

class AdoptersQuestionaryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adopters_questionary_index_url
    assert_response :success
  end

  test "should get show" do
    get adopters_questionary_show_url
    assert_response :success
  end

  test "should get new" do
    get adopters_questionary_new_url
    assert_response :success
  end

  test "should get edit" do
    get adopters_questionary_edit_url
    assert_response :success
  end

  test "should get create" do
    get adopters_questionary_create_url
    assert_response :success
  end

  test "should get update" do
    get adopters_questionary_update_url
    assert_response :success
  end

end
