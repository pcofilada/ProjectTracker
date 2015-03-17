class Dashboard::ProjectsController < DashboardController
  before_action :set_dashboard_project, only: [:show, :edit, :update, :destroy]

  # GET /dashboard/projects
  # GET /dashboard/projects.json
  def index
    @dashboard_projects = Project.all
  end

  # GET /dashboard/projects/1
  # GET /dashboard/projects/1.json
  def show
  end

  # GET /dashboard/projects/new
  def new
    @dashboard_project = Dashboard::Project.new
  end

  # GET /dashboard/projects/1/edit
  def edit
  end

  # POST /dashboard/projects
  # POST /dashboard/projects.json
  def create
    @dashboard_project = Dashboard::Project.new(dashboard_project_params)

    respond_to do |format|
      if @dashboard_project.save
        format.html { redirect_to @dashboard_project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @dashboard_project }
      else
        format.html { render :new }
        format.json { render json: @dashboard_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboard/projects/1
  # PATCH/PUT /dashboard/projects/1.json
  def update
    respond_to do |format|
      if @dashboard_project.update(dashboard_project_params)
        format.html { redirect_to @dashboard_project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @dashboard_project }
      else
        format.html { render :edit }
        format.json { render json: @dashboard_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboard/projects/1
  # DELETE /dashboard/projects/1.json
  def destroy
    @dashboard_project.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_project
      @dashboard_project = Dashboard::Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dashboard_project_params
      params[:dashboard_project]
    end
end
