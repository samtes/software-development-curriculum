#!/usr/bin/env ruby

require_relative 'lib/month'

unless ARGV[0]
  puts "You must provide a month and/or year"
  exit
end

month = ARGV.first.to_i
year = ARGV.last.to_i

if year < 1800 or year > 3000
  puts "Argument must be for a date between the years 1800 and 3000"
  exit
end

if month == year
  calendar = Year.new(year)
else
  calendar = Month.new(month, year)
end

puts calendar.to_s
