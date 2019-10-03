require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture = pictures(:one)
  end

  test "should get index" do
    get pictures_url, as: :json
    assert_response :success
  end

  test "should create picture" do
    assert_difference('Picture.count') do
      post pictures_url, params: { picture: { date: @picture.date, description: @picture.description, image_url: @picture.image_url, location: @picture.location } }, as: :json
    end

    assert_response 201
  end

  test "should show picture" do
    get picture_url(@picture), as: :json
    assert_response :success
  end

  test "should update picture" do
    patch picture_url(@picture), params: { picture: { date: @picture.date, description: @picture.description, image_url: @picture.image_url, location: @picture.location } }, as: :json
    assert_response 200
  end

  test "should destroy picture" do
    assert_difference('Picture.count', -1) do
      delete picture_url(@picture), as: :json
    end

    assert_response 204
  end
end
