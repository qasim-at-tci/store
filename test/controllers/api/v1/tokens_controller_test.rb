require "test_helper"

class Api::V1::TokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get JWT Token" do
    post api_v1_tokens_url, params: { user: { email: @user.email, password: 'some-pass' } }, as: :json

    json_response = JSON.parse(response.body)
    assert_not_nil json_response['token']
  end

  test "should not get JWT Token" do
    post api_v1_tokens_url, params: { user: { email: @user.email, password: 'bad-pass' } }, as: :json

    assert_response :unauthorized
  end
end
