require 'pry'

class PalindromeChecker

    def is_palindrome?(word)
        raise ArgumentError if !(word.is_a? String)

        # if !(word.is_a? String)
        #     raise ArgumentError
        # end

        word.gsub!(" ", "")
        if word.length <= 1
            return true 
        else 
            if word[0] == word[-1]
                return is_palindrome?(word[1...-1])
            else 
                return false 
            end
        end
    end
    
end

# checker = PalindromeChecker.new

# class Cli 
#     word = get_user_input

#     begin
#         checker.is_palindrome?(word)
#     rescue ArgumentError => err
#         puts err
#         puts "You have entered the wrong kind of argument"
#         word = get_user_input
#         checker_is_palindrome_checker(word)
#     end
# end