require 'test_helper'

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get notify" do
    get notifications_notify_url
    assert_response :success
  end

end
