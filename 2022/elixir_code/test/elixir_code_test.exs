defmodule ElixirCodeTest do
  use ExUnit.Case
  doctest Day_1

  test "Day 1/1 sample data" do
    input = File.read!("./test/fixtures/day_1_sample.txt")

    assert Day_1.total_max_calories(input) == 24_000
  end

  test "Day 1/1 real data" do
    input = File.read!("./test/fixtures/day_1_input.txt")

    assert Day_1.total_max_calories(input) == 71_780
  end

  test "Day 1/2 sample data" do
    input = File.read!("./test/fixtures/day_1_sample.txt")

    assert Day_1.total_top3_calories(input) == 45_000
  end

  test "Day 1/2 real data" do
    input = File.read!("./test/fixtures/day_1_input.txt")

    assert Day_1.total_top3_calories(input) == 212_489
  end
end
