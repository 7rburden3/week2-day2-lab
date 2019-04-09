require("minitest/autorun")
require("minitest/rg")

require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Ralph", "18")
  end

  def test_person_has_name
    assert_equal("Ralph", @person.name)
  end

  def test_person_has_age
    assert_equal("18", @person.age)
  end








end
