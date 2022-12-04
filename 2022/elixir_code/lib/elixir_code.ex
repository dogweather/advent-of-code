defmodule Day_1 do
  @moduledoc """
  Day 1: Calorie Counting
  """

  import Enum, except: [split: 2]
  import String

  @spec total_max_calories(binary) :: integer
  @doc """
  Find the Elf carrying the most Calories. How many total Calories
  is that Elf carrying?
  """
  def total_max_calories(input) when is_bitstring(input) do
    cleaned_up_input =
      input
      |> split("\n")
      |> map(&String.trim/1)

    elf_lists =
      cleaned_up_input
      |> chunk_by(&(&1 == ""))
      |> reject(&(&1 == [""]))
      |> map(fn l -> map(l, &to_integer/1) end)

    calorie_totals =
      elf_lists
      |> map(&sum/1)

    max(calorie_totals)
  end
end
