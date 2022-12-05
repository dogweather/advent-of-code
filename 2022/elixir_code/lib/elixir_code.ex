defmodule Day_1 do
  @moduledoc """
  Day 1: Calorie Counting
  """

  import Enum, except: [split: 2]
  import String, except: [reverse: 1]

  @spec total_max_calories(binary) :: integer
  @doc """
  Find the Elf carrying the most Calories. How many total Calories
  is that Elf carrying?
  """
  def total_max_calories(input) when is_bitstring(input) do
    calorie_totals(input)
    |> take(1)
    |> sum
  end

  def total_top3_calories(input) do
    calorie_totals(input)
    |> take(3)
    |> sum
  end

  defp calorie_totals(input) do
    cleaned_up_input =
      input
      |> split("\n")
      |> map(&trim/1)

    elf_lists =
      cleaned_up_input
      |> chunk_by(&(&1 == ""))
      |> reject(&(&1 == [""]))
      |> map(fn l -> map(l, &to_integer/1) end)

    elf_lists
    |> map(&sum/1)
    |> sort
    |> reverse
  end
end
