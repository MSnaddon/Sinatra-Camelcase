require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../models/string.rb')

class TestString < Minitest::Test
  def setup
    @string = String.new("zebra case of fraud")
  end


  def test_make_camel_case
    assert_equal("ZebraCaseOfFraud", @string.camelcase)
  end
  def test_upcase
    assert_equal("UPCASE","upcase".uppercase)
  end


end
