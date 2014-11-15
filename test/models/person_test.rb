require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "name is required" do
    person = Person.new
    assert !person.valid?, "requires a name"
    refute person.errors[:name].empty? "name error should occur"

    person.name = "Sam"
    person.valid?
    assert person.errors[:name].empty? "name errors should be gone"
  end
end
