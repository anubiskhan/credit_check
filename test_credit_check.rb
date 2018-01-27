require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './credit_check.rb'

class CreditCheckTest < Minitest::Test
  def test_credit_card_number_validity

    assert_equal 80, luhn_check("4929735477250543")

  end
end
