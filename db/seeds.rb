demo = User.find_or_create_by!(email: "demo@taskly.com") do |u|
  u.name     = "Olivia Rhye"
  u.password = "password123"
end

redesign = demo.projects.find_or_create_by!(name: "Website Redesign") do |p|
  p.color = "#5b5bd6"
  p.emoji = "🌐"
end

launch = demo.projects.find_or_create_by!(name: "Product Launch") do |p|
  p.color = "#10b981"
  p.emoji = "🚀"
end

mobile = demo.projects.find_or_create_by!(name: "Mobile App") do |p|
  p.color = "#f59e0b"
  p.emoji = "📱"
end

marketing = demo.projects.find_or_create_by!(name: "Marketing Campaign") do |p|
  p.color = "#5b5bd6"
  p.emoji = "📣"
end

today = Time.zone.today

[
  { title: "Design homepage for website", status: :todo, due_date: today, label: "Website Redesign",
    project: redesign, priority: :high },
  { title: "Review project requirements",        status: :todo,        due_date: today,     label: "Product Launch",
    project: launch,    priority: :medium },
  { title: "Team stand-up meeting",              status: :in_progress, due_date: today,     label: "Meetings",
    project: nil,       priority: :low },
  { title: "Update user documentation",          status: :todo,        due_date: today,     label: "Docs",
    project: redesign,  priority: :low },
  { title: "Fix bugs in dashboard",              status: :in_progress, due_date: today,     label: "Development",
    project: mobile,    priority: :high },
  { title: "Write Q3 marketing brief",           status: :completed,   due_date: today - 1, label: "Marketing",
    project: marketing, priority: :medium },
  { title: "Update user documentation",          status: :completed,   due_date: today - 2, label: "Docs",
    project: redesign,  priority: :low },
  { title: "Prepare design assets", status: :completed, due_date: today - 3, label: "Website Redesign",
    project: redesign, priority: :medium },
  { title: "Sprint planning session",            status: :completed,   due_date: today - 4, label: "Development",
    project: mobile,    priority: :high },
  { title: "Competitor analysis report",         status: :completed,   due_date: today - 5, label: "Marketing",
    project: marketing, priority: :medium },
  { title: "Submit design assets",               status: :todo,        due_date: today + 1, label: "Website Redesign",
    project: redesign,  priority: :high },
  { title: "Marketing strategy call",            status: :in_progress, due_date: today + 2, label: "Marketing",
    project: marketing, priority: :medium },
  { title: "Sprint planning",                    status: :todo,        due_date: today + 4, label: "Development",
    project: mobile,    priority: :medium },
  { title: "Launch campaign assets review",      status: :overdue,     due_date: today - 7, label: "Product Launch",
    project: launch,    priority: :high },
  { title: "Mobile onboarding flow review",      status: :overdue,     due_date: today - 6, label: "Development",
    project: mobile,    priority: :high },
  { title: "User research interviews", status: :overdue, due_date: today - 8, label: "Product Launch",
    project: launch, priority: :medium }
].each do |attrs|
  demo.tasks.find_or_create_by!(title: attrs[:title]) do |t|
    t.status   = attrs[:status]
    t.due_date = attrs[:due_date]
    t.label    = attrs[:label]
    t.project  = attrs[:project]
    t.priority = attrs[:priority]
  end
end
