# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# --------------------1) Create a method that takes in a number and determines if the number is even or odd. Use the test variables provided.

reposts1 = 7
# Expected output: '7 is odd'
reposts2 = 42
# Expected output: '42 is even'
reposts3 = 221
# Expected output: '221 is odd'

# Pseudo code:
# input: a number
# output: a string stating whether the number is odd or even.
# create a method called even_or_odd and use number as the parameter
    # create a conditional statement 
        # utilizing modulo, if the number % 2 equates to 0, return it as even.
        # else, return "odd"

# adjustment to psuedo code: I wanted to add an additional else statement in the case input is not a number. I looked up to find whether there is a ruby method for JS's .typeof --> .is_a?( insert data type here )
# input: a number
# output: a string, either "even" or "odd" or "(Personal error message)"
    # create a method called even_or_odd and use number as the parameter
        # create a conditional statement
            # utilizing modulo, if the number % 2 equates to 0, AND if the number is data type integer (.is_a?()), return "even"
            # utilizing modulo, if the number % 2 does not equate to 0, AND if the number is data type integer (.is_a?()), return "odd"
            # ELSE, (if none of the above), return error message.

def even_or_odd(number)
    if number % 2 == 0 && number.is_a?(Integer)
        "#{number} is even"
    elsif number % 2 != 0 && number.is_a?(Integer)
        "#{number} is odd"
    else 
        "Error, you need to ONLY insert an integer."
    end
end

# p even_or_odd reposts1 # --> "7 is odd"
# p even_or_odd reposts2 # --> "42 is even"
# p even_or_odd reposts3 # --> "221 is odd"
# p even_or_odd("hello") # --> "Error, you need to ONLY insert an integer."

# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. 
# HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete

beatles_album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
beatles_album2 = 'Sgt Pepper'
# Expected output: 'Sgt Pppr'
beatles_album3 = 'Abbey Road'
# Expected output: 'bby Rd'

def remove_the_vowels(string)
    string.gsub(/[aeiouAEIOUa]/, '')
end

# p remove_the_vowels beatles_album1 # --> "Rbbr Sl"
# p remove_the_vowels beatles_album2 # --> "Sgt Pppr"
# p remove_the_vowels beatles_album3 # --> "bby Rd"

# Pseudo code:
# Input: A string
# Output: A string - same string but without vowels.
# Create a method called remove_the_vowels with string as it's parameter.
    # From the string, utilize method .gsub to search the string for any characters that are vowels [aeiouAEIOU] and replace it with '' (empty string). 

# -------------------3) Create a method that takes in a string and checks if the string is a palindrome. A palindrome is the same word spelled forward or backward. Use the test variables provided.

palindrome_test_case1 = 'Racecar'
# Expected output: 'Racecar is a palindrome'
palindrome_test_case2 = 'LEARN'
# Expected output: 'LEARN is not a palindrome'
palindrome_test_case3 = 'Rotator'
# Expected output: 'Rotator is a palindrome'

def palindrome_method(string)
        new_string = string.reverse.downcase
        # p new_string
        if new_string == string.downcase
            "#{string} is a palindrome"
        else
            "#{string} is not a palindrome"
        end
end

# p palindrome_method palindrome_test_case1 # --> "Racecar is a palindrome"
# p palindrome_method palindrome_test_case2 # --> "LEARN is not a palindrome"
# p palindrome_method palindrome_test_case3 # --> "Rotator is a palindrome"

# Pseudo code:
# Input: A string
# Output: A string that will declare whether the input string is a palindrome or not.
# Create a methode called palindrome_method with string as it's parameter
    # Create a new variable (new_string) that will copy the input string. Utilize .reverse to reverse the input string, and utilize .downcase to lowercase the string in case there are any upper cased letters.
    # Create a conditional statement.
        # If new_string equals string is true, return "#{string} is a palindrome"
        # Correction: If new_string equals string when all lowercase (utilize .downcase) is true, return "#{string} is a palindrome"
        # If new_string equals string is false, return "#{string} is not a palindrome"

    