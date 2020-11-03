require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get registration" do
    get pages_registration_url
    assert_response :success
  end

end
