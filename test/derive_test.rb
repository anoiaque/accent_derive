$:.unshift File.join(File.dirname(__FILE__),'..','lib')
require 'test/unit'
require 'derive'

class DeriveTest < Test::Unit::TestCase
  
 def test_with_single_car_string
   assert_equal ["e", "é", "è"], derive("e")
   assert_equal ["e", "é", "è"], derive("é")
   assert_equal ["a","à","â"], derive("a")
   assert_equal ["a","à","â"], derive("à")
 end
 
 def test_with_string
   assert_equal [], ["ee", "eé", "eè", "ée", "éé", "éè", "èè", "èé", "èe"] -  derive("eé")
   assert_equal [], ["éric", "èric", "eric"] -  derive("éric")
 end
 
end
