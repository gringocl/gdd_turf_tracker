# gdd_turf_tracker
GDD Turf Tracker

Need from user
  - account w/ contact info email or phone
  - lat/long or zipcode
  - GDD target
  - Start Date / Time.now or Time.in_the_past
  - Crop Name

Weather Info
  - Max/Min temp for day
  - Base Temp for GDD calc 10c or 50f / V2 User preference

Rails api
- User, first_name, email, phone, has_many locations
- Location has_many crops, name, zip_code
  - Crop, belongs_to location, gdd_target, name, start_date
  - WeatherInfo belongs_to location, max_temp, min_temp, date, base_temp

Weather api wrapper
  - [darkskyapp/forecast-ruby](https://github.com/darkskyapp/forecast-ruby)

Messaging service
  - email
  - sms
  - push
