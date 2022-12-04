defmodule ElixirCodeTest do
  use ExUnit.Case
  doctest Day_1

  test "Day 1/1 sample data" do
    {:ok, input} = File.read("./test/fixtures/day_1_sample.txt")

    assert Day_1.total_max_calories(input) == 24000
  end


  test "Day 1/1 real data" do
    {:ok, input} = File.read("./test/fixtures/day_1_input.txt")

    assert Day_1.total_max_calories(input) == 71780
  end
end
