require_relative "./driver.rb"
require "pry"

x = Driver.new("Pat")
y = Driver.new("Sam")
z = Driver.new("Jerry")
Driver.all_driver_names
# ["Pat", "Sam"]

// #<Driver:0x00007fd7f58e58d0 @name="Sam">
binding.pry