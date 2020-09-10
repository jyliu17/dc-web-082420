require 'pry'
class Calculator


    def divide(x, y)
        quotient =  x / y

        return quotient
    end

end

calc = Calculator.new 
begin
    quotient = calc.divide(1, 0)
rescue ZeroDivisionError => e 
    puts e
    puts "You can't divide by zero"
rescue ArgumentError => e 
    puts e
    puts "You gave the wrong number of arguments"
end

puts "Doing division nowA"
puts "About to tell you the answer"
puts "The answer is: #{quotient ||= "Unknown"}"
