require 'byebug'
require 'json'
require 'date'
require_relative './models/booking'
require_relative './base_service'
require './assign_room'


task :default => [:run]

desc "Main task to get results"
task "run" do
  bookings = JSON.parse(File.read("data/input.txt"), symbolize_names: true)
  print AssignRoom.call(bookings, 3)
end
