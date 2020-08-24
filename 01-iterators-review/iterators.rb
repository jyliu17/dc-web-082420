#############################################################################
# For each of the following examples, write *two* methods that solve the    #
# problem:  One that uses `.each` and one that uses one of the higher level #
# iterator methods                                                          #
#############################################################################

# Remember:

# map/collect:  Returns an array where each value of the original array 
# corresponds to an element in the new array

# find/detect:  Returns the _first_ element for which the statement in the block
# evaluates as True

# select/find_all:  Returns an array of _all_ elements for which the statement in
# the block evaluates as True

nums = (1..20).to_a #creates an array of all numbers from 1-20



# DRY : Don't Repeat Yourself

# 1.  Create an array of numbers where each new number is three times as big as
# its original number (e.g., [3, 6, 9])

def three_times_with_each(numbers)
    threes = []
    if numbers.length > 100
        return "This list is too long for me to work with"
    end
    puts "about to make threes"
    numbers.each do |num|

        threes << num * 3
    end 
    return threes
end

def get_evens(numbers)
    return numbers.find_all {|num| num.even? }
    # return numbers.even?

end

# def select

#     alias :find_all
# end

evens = get_evens(nums)
# print evens
# print three_times_with_each(evens)

def three_times_with_map(numbers)
    result = numbers.map {|num| num * 3}
    return result
end

# print three_times_with_map(nums)

# 2.  Find the first number that is divisible by 7

def find_first_divisible_by_7(numbers)
    return numbers.find {|num| num % 7 == 0}
end


# 3.  Find all numbers that are divisible by 7

def find_all_divisible_by(divisor, numbers)
    return numbers.select {|num| num % divisor == 0}
end

# print find_all_divisible_by(99, nums)

# 4.  Find the first number that is divisible by 7 AND greater than 10

def big_divisible(nums)
    # nums.find do |num|
    #     num % 7 == 0 && num > 10
    # end
    find_all_divisible_by(7, nums).find {|number| number > 10}
end

# puts big_divisible(nums)


# def satisfies_both(nums)  
#      nums.find do |num|        
#         find_all_divisible_by(7, nums).include?(num) && num > 10    
#     end
# end
# puts satisfies_both(nums)
# Bonus:


# 5.  Create an array of the squares (the number times itself) of all numbers
# that are divisible by 7

def seven_squares(numbers)

    sevens = find_all_divisible_by(7, numbers)
    squares = sevens.map {|num| num ** 2}
    return squares

end

print seven_squares(nums)