class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true

  enum :status, { todo: 0, in_progress: 1, completed: 2, overdue: 3 }
  enum :priority, { low: 0, medium: 1, high: 2 }

  scope :due_today,         -> { where(due_date: Time.zone.today) }
  scope :upcoming,          -> { where(due_date: Time.zone.today..).order(:due_date) }
  scope :recently_updated,  -> { order(updated_at: :desc) }
end
