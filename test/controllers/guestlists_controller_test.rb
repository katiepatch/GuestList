require 'test_helper'

class GuestlistsControllerTest < ActionController::TestCase
  setup do
    @guestlist = guestlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guestlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guestlist" do
    assert_difference('Guestlist.count') do
      post :create, guestlist: { attending: @guestlist.attending, name: @guestlist.name, notified: @guestlist.notified, rsvp: @guestlist.rsvp }
    end

    assert_redirected_to guestlist_path(assigns(:guestlist))
  end

  test "should show guestlist" do
    get :show, id: @guestlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guestlist
    assert_response :success
  end

  test "should update guestlist" do
    patch :update, id: @guestlist, guestlist: { attending: @guestlist.attending, name: @guestlist.name, notified: @guestlist.notified, rsvp: @guestlist.rsvp }
    assert_redirected_to guestlist_path(assigns(:guestlist))
  end

  test "should destroy guestlist" do
    assert_difference('Guestlist.count', -1) do
      delete :destroy, id: @guestlist
    end

    assert_redirected_to guestlists_path
  end
end
