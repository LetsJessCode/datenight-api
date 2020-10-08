require 'test_helper'

class DatenightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datenight = datenights(:one)
  end

  test "should get index" do
    get datenights_url, as: :json
    assert_response :success
  end

  test "should create datenight" do
    assert_difference('Datenight.count') do
      post datenights_url, params: { datenight: { category: @datenight.category, instructions: @datenight.instructions, items: @datenight.items, title: @datenight.title } }, as: :json
    end

    assert_response 201
  end

  test "should show datenight" do
    get datenight_url(@datenight), as: :json
    assert_response :success
  end

  test "should update datenight" do
    patch datenight_url(@datenight), params: { datenight: { category: @datenight.category, instructions: @datenight.instructions, items: @datenight.items, title: @datenight.title } }, as: :json
    assert_response 200
  end

  test "should destroy datenight" do
    assert_difference('Datenight.count', -1) do
      delete datenight_url(@datenight), as: :json
    end

    assert_response 204
  end
end
