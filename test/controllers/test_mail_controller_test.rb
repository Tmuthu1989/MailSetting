require 'test_helper'

class TestMailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_mail_index_url
    assert_response :success
  end

end
