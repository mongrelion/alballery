def workers
  @workers ||= if ENV['WORKERS']
    ENV['WORKERS'].to_i
  else
    1
  end
end

puts "Unicorn workers: #{workers}"
worker_processes workers
timeout 30
