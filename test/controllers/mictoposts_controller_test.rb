require 'test_helper'

class MictopostsControllerTest < ActionController::TestCase
  setup do
    @mictopost = mictoposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mictoposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mictopost" do
    assert_difference('Mictopost.count') do
      post :create, mictopost: { content: @mictopost.content, user_id: @mictopost.user_id }
    end

    assert_redirected_to mictopost_path(assigns(:mictopost))
  end

  test "should show mictopost" do
    get :show, id: @mictopost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mictopost
    assert_response :success
  end

  test "should update mictopost" do
    patch :update, id: @mictopost, mictopost: { content: @mictopost.content, user_id: @mictopost.user_id }
    assert_redirected_to mictopost_path(assigns(:mictopost))
  end

  test "should destroy mictopost" do
    assert_difference('Mictopost.count', -1) do
      delete :destroy, id: @mictopost
    end

    assert_redirected_to mictoposts_path
  end
end
