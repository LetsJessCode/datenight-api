require 'test_helper'

class ReviewersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reviewer = reviewers(:one)
  end

  test "should get index" do
    get reviewers_url, as: :json
    assert_response :success
  end

  test "should create reviewer" do
    assert_difference('Reviewer.count') do
      post reviewers_url, params: { reviewer: { email: @reviewer.email, name: @reviewer.name } }, as: :json
    end

    assert_response 201
  end

  test "should show reviewer" do
    get reviewer_url(@reviewer), as: :json
    assert_response :success
  end

  test "should update reviewer" do
    patch reviewer_url(@reviewer), params: { reviewer: { email: @reviewer.email, name: @reviewer.name } }, as: :json
    assert_response 200
  end

  test "should destroy reviewer" do
    assert_difference('Reviewer.count', -1) do
      delete reviewer_url(@reviewer), as: :json
    end

    assert_response 204
  end
end
