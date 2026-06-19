class DashboardController < ApplicationController
  before_action :require_login
  layout "dashboard"

  def index
    load_stats
    load_collections
  end

  private

  def load_stats
    @tasks_count = current_user.tasks.count
    @in_progress = current_user.tasks.in_progress.count
    @completed   = current_user.tasks.completed.count
    @overdue     = current_user.tasks.overdue.count
  end

  def load_collections
    @today_tasks     = current_user.tasks.due_today.order(:label)
    @projects        = current_user.projects.includes(:tasks).limit(4)
    @recent_activity = current_user.tasks.recently_updated.limit(4)
    @upcoming_tasks  = current_user.tasks.upcoming.limit(4)
  end
end
