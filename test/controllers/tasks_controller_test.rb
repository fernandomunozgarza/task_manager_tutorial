require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tasks_index_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should get edit" do
    task = tasks(1)
    get edit_task_url(@task)
    assert_response :success
  end
end
