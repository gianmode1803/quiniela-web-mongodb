#json.partial! "calendars/calendar", calendar: @calendar
json.array!(@calendars) do |calendar|
  json.extract! calendar, :fecha, :hora, :country
#  json.url post_url(calendar, format: :json)
end
