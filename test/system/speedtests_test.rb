require "application_system_test_case"

class SpeedtestsTest < ApplicationSystemTestCase
  setup do
    @speedtest = speedtests(:one)
  end

  test "visiting the index" do
    visit speedtests_url
    assert_selector "h1", text: "Speedtests"
  end

  test "should create speedtest" do
    visit speedtests_url
    click_on "New speedtest"

    fill_in "Download", with: @speedtest.download
    fill_in "Upload", with: @speedtest.upload
    click_on "Create Speedtest"

    assert_text "Speedtest was successfully created"
    click_on "Back"
  end

  test "should update Speedtest" do
    visit speedtest_url(@speedtest)
    click_on "Edit this speedtest", match: :first

    fill_in "Download", with: @speedtest.download
    fill_in "Upload", with: @speedtest.upload
    click_on "Update Speedtest"

    assert_text "Speedtest was successfully updated"
    click_on "Back"
  end

  test "should destroy Speedtest" do
    visit speedtest_url(@speedtest)
    click_on "Destroy this speedtest", match: :first

    assert_text "Speedtest was successfully destroyed"
  end
end
