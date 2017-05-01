class IssuesController < ApplicationController
  def index
    @issues = Issue.order(last_updated_on: :desc)
    @issue = Issue.all
    @ready_issue = Issue.all
    @ready_issue_title = @ready_issue.pluck(:title)
  end

  def show
    @issue = Issue.find(params[:id])
    @histories = @issue.histories.order(:created_on)
  end

  def new
    @issue = Issue.new
  end

  def edit
    @issue = Issue.find(params[:id])
  end


  def create
  @issue = Issue.new
  respond_to do |format|
      if @issue.save
        format.html { redirect_to @issue, notice: 'Issue was successfully created.' }
        format.json { render :show, status: :created, location: @issue }
      else
        format.html { render :new }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end
end

