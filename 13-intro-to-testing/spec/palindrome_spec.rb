require_relative "../palindrome.rb"

describe "PalindromeChecker" do 

    let (:checker) {PalindromeChecker.new}

    it "returns true when input is 'dad'" do 
        expect(checker.is_palindrome?("dad")).to be (true)
    end

    it "returns false when input is 'banana'" do 
        expect(checker.is_palindrome?("banana")).to be(false)
    end

    it "returns true when input is 'taco cat'" do 
        expect(checker.is_palindrome?("taco cat")).to be(true)
    end

    it "returns false when input is 'Abba'" do 
        expect(checker.is_palindrome?("Abba")).to be(false)
    end

    it "_____ when input is not a String" do 
        expect{checker.is_palindrome?(27)}.to raise_error ArgumentError
    end

end