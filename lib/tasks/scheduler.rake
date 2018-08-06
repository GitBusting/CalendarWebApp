namespace :scheduler do
  desc "check if we have an upcoming appointment"
  task schedule: :environment do
    print "env: #{Rails.env}"
    Appointment.all.each do |appointment|
      print appointment.name
    end
  end
end
