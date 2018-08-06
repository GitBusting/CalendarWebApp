namespace :scheduler do
  desc "check if we have an upcoming appointment"
  task schedule: :environment do
    print "env: #{Rails.env}"
    Appointment.all.each do |appointment|
      #print appointment.name
      print appointment.start_time
      print " - "
      print Time.now
      print " = "
      print (Time.now - appointment.start_time)/60
      print "\n"
    end
  end
end
