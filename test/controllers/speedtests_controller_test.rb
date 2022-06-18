require "test_helper"

class SpeedtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speedtest = speedtests(:one)
  end

  test "should get index" do
    get speedtests_url
    assert_response :success
  end

  test "should create speedtest" do
    assert_difference("Speedtest.count") do
      post speedtests_url, params: { speedtest: { download: @speedtest.download, upload: @speedtest.upload } }
    end

    assert_redirected_to speedtests_url
  end
end
