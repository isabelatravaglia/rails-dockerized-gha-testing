require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "Tia", last_name: "Suzy")
    assert_equal "Tia Suzy", user.full_name
  end
end
