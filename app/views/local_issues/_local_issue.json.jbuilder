json.extract! local_issue, :id, :title, :desription, :priority_level_id, :fixer_id, :tester_id, :created_at, :updated_at
json.url local_issue_url(local_issue, format: :json)
