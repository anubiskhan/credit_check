card_number = "4929735477250543"

valid = false

# Your Luhn Algorithm Here
def LuhnCheck ( card_number )
  card_number = card_number.split("")
  card_number = card_number.reverse
  card_number = card_number.map(&:to_i)
  card_number = card_number.map.with_index { |digit, index|
    if index.odd?
      digit = digit*2
    else
      digit = digit
    end
  }
  card_number = card_number.map { |digit|
    if digit > 9
      digit = digit - 9
    else
      digit = digit
    end
  }
  card_sum = card_number.inject(0){|sum, digit| sum + digit }
  puts card_number
  card_sum
end
cc_sum = LuhnCheck("4929735477250543")
puts cc_sum
# Output
## If it is valid, print "The number is valid!"

if cc_sum % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid"
end
## If it is invalid, print "The number is invalid!"
