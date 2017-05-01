class LocalIssuesController < ApplicationController
  before_action :set_local_issue, only: [:show, :edit, :update, :destroy]

  # GET /local_issues
  # GET /local_issues.json
  def index
    @local_issues = LocalIssue.all
  end

  # GET /local_issues/1
  # GET /local_issues/1.json
  def show
  end

  # GET /local_issues/new
  def new
    @local_issue = LocalIssue.new
  end

  # GET /local_issues/1/edit
  def edit
  end

  # POST /local_issues
  # POST /local_issues.json
  def create
    @local_issue = LocalIssue.new(local_issue_params)

    respond_to do |format|
      if @local_issue.save
        format.html { redirect_to @local_issue, notice: 'Local issue was successfully created.' }
        format.json { render :show, status: :created, location: @local_issue }
      else
        format.html { render :new }
        format.json { render json: @local_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_issues/1
  # PATCH/PUT /local_issues/1.json
  def update
    respond_to do |format|
      if @local_issue.update(local_issue_params)
        format.html { redirect_to @local_issue, notice: 'Local issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @local_issue }
      else
        format.html { render :edit }
        format.json { render json: @local_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_issues/1
  # DELETE /local_issues/1.json
  def destroy
    @local_issue.destroy
    respond_to do |format|
      format.html { redirect_to local_issues_url, notice: 'Local issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def export
    response = LocalIssue.create_issue(params[:id])
    if response.body
      respond_to do |format|
          format.html { redirect_to local_issues_path, notice: 'Local issue was successfully export.' }
          format.json { render :show, status: :ok, location: @local_issue }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_issue
      @local_issue = LocalIssue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def local_issue_params
      params.require(:local_issue).permit(:title, :desription, :priority_level_id, :fixer_id, :tester_id)
    end
end
