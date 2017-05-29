require 'whenever'
# set :output, "/path/to/my/cron_log.log"
#
every 2.minutes do
  runner "Site.ping"
end
