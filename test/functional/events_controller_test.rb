require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { avatar_content_type: @event.avatar_content_type, avatar_file_name: @event.avatar_file_name, avatar_file_size: @event.avatar_file_size, category_id: @event.category_id, comments: @event.comments, description: @event.description, end_time: @event.end_time, host: @event.host, location: @event.location, name: @event.name, start_time: @event.start_time, type: @event.type }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { avatar_content_type: @event.avatar_content_type, avatar_file_name: @event.avatar_file_name, avatar_file_size: @event.avatar_file_size, category_id: @event.category_id, comments: @event.comments, description: @event.description, end_time: @event.end_time, host: @event.host, location: @event.location, name: @event.name, start_time: @event.start_time, type: @event.type }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
