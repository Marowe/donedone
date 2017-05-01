class LocalIssue < ApplicationRecord

  def self.create_issue(local_issue_id)
    DoneDoneApi.export_issues(local_issue_id)
   end
end
