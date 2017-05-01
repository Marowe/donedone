require 'test_helper'

class LocalIssuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @local_issue = local_issues(:one)
  end

  test "should get index" do
    get local_issues_url
    assert_response :success
  end

  test "should get new" do
    get new_local_issue_url
    assert_response :success
  end

  test "should create local_issue" do
    assert_difference('LocalIssue.count') do
      post local_issues_url, params: { local_issue: { desription: @local_issue.desription, fixer_id: @local_issue.fixer_id, priority_level_id: @local_issue.priority_level_id, tester_id: @local_issue.tester_id, title: @local_issue.title } }
    end

    assert_redirected_to local_issue_url(LocalIssue.last)
  end

  test "should show local_issue" do
    get local_issue_url(@local_issue)
    assert_response :success
  end

  test "should get edit" do
    get edit_local_issue_url(@local_issue)
    assert_response :success
  end

  test "should update local_issue" do
    patch local_issue_url(@local_issue), params: { local_issue: { desription: @local_issue.desription, fixer_id: @local_issue.fixer_id, priority_level_id: @local_issue.priority_level_id, tester_id: @local_issue.tester_id, title: @local_issue.title } }
    assert_redirected_to local_issue_url(@local_issue)
  end

  test "should destroy local_issue" do
    assert_difference('LocalIssue.count', -1) do
      delete local_issue_url(@local_issue)
    end

    assert_redirected_to local_issues_url
  end
end
