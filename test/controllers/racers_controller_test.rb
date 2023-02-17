require "test_helper"

class RacersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @racer = racers(:one)
  end

  test "should get index" do
    get racers_url, as: :json
    assert_response :success
  end

  test "should create racer" do
    assert_difference('Racer.count') do
      post racers_url, params: { racer: { city: @racer.city, f_name: @racer.f_name, l_name: @racer.l_name, lat: @racer.lat, lng: @racer.lng, state: @racer.state } }, as: :json
    end

    assert_response 201
  end

  test "should show racer" do
    get racer_url(@racer), as: :json
    assert_response :success
  end

  test "should update racer" do
    patch racer_url(@racer), params: { racer: { city: @racer.city, f_name: @racer.f_name, l_name: @racer.l_name, lat: @racer.lat, lng: @racer.lng, state: @racer.state } }, as: :json
    assert_response 200
  end

  test "should destroy racer" do
    assert_difference('Racer.count', -1) do
      delete racer_url(@racer), as: :json
    end

    assert_response 204
  end
end
