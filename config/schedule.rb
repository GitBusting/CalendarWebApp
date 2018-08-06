require 'active_support/time'
every 1.minutes do
  command "/usr/bin/echo lol > out.txt"
  rake "scheduler:schedule"
end
