module Dashboard
  class ProjectsController < Dashboard::BaseController
    before_action :set_project, only: %i[show edit update destroy]

    def index
      @projects = current_user.projects.all
    end

    def show; end

    def new
      @project = Project.new
    end

    def edit; end

    def create
      @project = current_user.projects.build(project_params)
      if @project.save
        redirect_to dashboard_project_path(@project), notice: "Project created successfully."
      else
        render :new, status: :unprocessable_content
      end
    end

    def update
      if @project.update(project_params)
        redirect_to dashboard_project_path(@project), notice: "Project updated successfully."
      else
        render :edit, status: :unprocessable_content
      end
    end

    def destroy
      @project.destroy
      redirect_to dashboard_projects_path, notice: "Project deleted."
    end

    private

    def set_project
      @project = current_user.projects.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :color, :emoji)
    end
  end
end
