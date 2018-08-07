require 'net/http'
require 'uri'
require 'json'
namespace :scheduler do
  desc "check if we have an upcoming appointment"
  task schedule: :environment do
    print "env: #{Rails.env}"
    Appointment.all.each do |appointment|
      #print appointment.name
      date = appointment.start_time
      print date
      print " - "
      print Time.now
      print " = "
      print ((appointment.start_time)- Time.now)/60
      print "\n"
      if ((appointment.start_time)-Time.now)/60 <= 10 && ((appointment.start_time)-Time.now)/60 > 0
        #send notification
        uri = URI.parse("https://fcm.googleapis.com/v1/projects/calendarapp-efa63/messages:send")
        token_api = "AIzaSyCWHSISWMed0D7kYx6bBTBsWQgqAj-AjQs"
        header = {'Content-Type' => 'application/json',
                  'Authorization' => 'Bearer ' + "ya29.c.ElryBUfcs1zDxEOSXj2Fr1ViXIweJKh8TADojK9ikgH80T3qJnJ5Ei_u9OPpuFkkDAAtTWtNnd1B-ESglIN-551NFouzCulVN0kTQzmndIdBy1AfhfcD7ebNEHs"
                  }
        msg_to_send = appointment.name
        msg = {message: {
              token: "d9opWCgj_n4:APA91bGZ00GpBONsc21hJ6p-eoAlx9ryHI9bW5DcaI2LvVpntwP_kV_FvMaoD_ehaA1vXmb89hJF02f7FAjXo671dG1Gwjv0PraMdxkJBRlAI777qwQ1KMf1D39twt_AJGaqpilgK8gz9s4sto458qccz46gXm6_eA",
                notification: {
                body: msg_to_send,
                title: 'CalendarWebApp ⚡'
              },
                android: {
                  notification: {
                    sound: 'default'
                  }
                }
              }
            }

  # Create the HTTP objects
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = (uri.scheme == "https")
        request = Net::HTTP::Post.new(uri.request_uri, header)
        request.body = msg.to_json

  # Send the request
      response = http.request(request)
      print response
    end
    end
  end
end
