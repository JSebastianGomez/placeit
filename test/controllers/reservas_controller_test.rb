require "test_helper"

class ReservasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reservas_index_url
    assert_response :success
  end
end
