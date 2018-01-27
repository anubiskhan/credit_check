  card_number = "4929735477250543"

  valid = false

  def make_cc_number_an_array(card_number)
    @card_number2 = card_number.split("")
    # reverse_cc_number_array(card_number2)
  end

  def reverse_cc_number_array(card_number2)
    @card_number3 = @card_number2.reverse
    # makes_cc_number_array_integers(card_number3)
  end

  def makes_cc_number_array_integers(card_number3)
    @card_number4 = @card_number3.map(&:to_i)
    # doubles_appropriate_cc_numbers(card_number4)
  end

  def doubles_appropriate_cc_numbers(card_number4)
    @card_number5= @card_number4.map.with_index { |digit, index|
      if index.odd?
        digit = digit*2
      else
        digit = digit
      end
    }
    # reduces_appropriate_cc_numbers(card_number5)
  end

  def reduces_appropriate_cc_numbers(card_number5)
    @card_number6 = @card_number5.map { |digit|
      if digit > 9
        digit = digit - 9
      else
        digit = digit
      end
    }
    # sums_cc_number_array(card_number6)
  end

  def sums_cc_number_array(card_number6)
    card_sum = @card_number6.inject(0){|sum, digit| sum + digit }
    puts card_number
    card_sum
  end
  cc_sum = sums_cc_number_array("4929735477250543")
  puts cc_sum

if cc_sum % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid"
end
