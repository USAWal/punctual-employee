require 'punctual/employee'

CAPTURE_TIME = Transform(/^(\d{1,2}):(\d{1,2}):(\d{1,2}) on (\d{1,2}).(\d{1,2}).(\d{4})$/) do |hours, minutes, seconds, day, month, year|
  Time.utc year, month, day, hours, minutes, seconds
end

Given(/^it's (#{CAPTURE_TIME})$/) do |time|
  now = time
end

Then(/^(#{CAPTURE_TIME}) should be persisted as turned on time$/) do |time|
  expect(Punctual::Employee::Notch.last.notched_up_at).to eq time
end
