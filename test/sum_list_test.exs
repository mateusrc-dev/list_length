# file tests have extension 'exs'

defmodule SumListTest do
  # we let's get all functionality of ex unit to our module
  use ExUnit.Case

  # test function with arity that is public
  describe "call/1" do
    test "returns the list sum" do
      list = [1, 2, 3]

      response = SumList.call(list)

      expected_response = 6

      # for verify if a value is equal the other
      assert response == expected_response
    end
  end
end
