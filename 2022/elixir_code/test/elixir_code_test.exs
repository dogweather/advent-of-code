defmodule ElixirCodeTest do
  use ExUnit.Case
  doctest Day_1

  test "Day 1/1 sample data" do
    {:ok, input} = File.open("./test/fixtures/day_1_sample.txt")

    assert Day_1.total_max_calories(input) == 24000
  end
end
