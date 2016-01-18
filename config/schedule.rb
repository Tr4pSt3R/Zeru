set :output, "./log/cron.log"

every :hour do
  runner "Cron.run"
end
