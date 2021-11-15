require 'test_helper'

class MulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mules_index_url
    assert_response :success
  end

end
