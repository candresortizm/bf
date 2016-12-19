require 'test_helper'

class PetWallUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pet_wall_users_index_url
    assert_response :success
  end

  test "should get show" do
    get pet_wall_users_show_url
    assert_response :success
  end

end
