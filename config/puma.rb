threads_count = ENV.fetch("RAILS_MAX_THREADS", 3)
threads threads_count, threads_count

port ENV.fetch("PORT", 3000)

plugin :tmp_restart

pidfile ENV["PIDFILE"] if ENV["PIDFILE"]

after_booted do
  port    = ENV.fetch("PORT", 3000)
  db_host = ENV.fetch("DB_HOST", "localhost")
  db_port = ENV.fetch("DB_PORT", 5432)
  db_name = ENV.fetch("RAILS_ENV", "development")

  puts ""
  puts "  ┌─────────────────────────────────────────┐"
  puts "  │           TaskManager is running         │"
  puts "  ├─────────────────────────────────────────┤"
  puts "  │  Web:       http://0.0.0.0:#{port}           │"
  puts "  │  API:       http://0.0.0.0:#{port}/api       │"
  puts "  │  Database:  #{db_host}:#{db_port} (#{db_name})  │"
  puts "  │  Env:       #{ENV.fetch('RAILS_ENV', 'development')}                  │"
  puts "  └─────────────────────────────────────────┘"
  puts ""
end
