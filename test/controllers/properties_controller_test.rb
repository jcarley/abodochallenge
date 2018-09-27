require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get properties_url
    assert_response :success
  end

end
