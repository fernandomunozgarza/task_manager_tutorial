require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    task = tasks(:one)
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    task = tasks(:one)
    get new_task_url
    assert_response :success
  end

  test "should get edit" do
    task = tasks(:one)
    get edit_task_url(task)
    assert_response :success
  end
end
