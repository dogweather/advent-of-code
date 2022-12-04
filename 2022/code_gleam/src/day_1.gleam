import gleam/int.{max, sum}
import gleam/list.{chunk, filter, fold, map}
import gleam/result
import gleam/string.{split, trim}

pub fn total_max_calories(input: String) -> Int {
  let cleaned_up_input =
    input
    |> split("\n")
    |> map(trim)

  let elf_lists =
    cleaned_up_input
    |> chunk(by: fn(line) { line == "" })
    |> filter(fn(l) { l != [""] })
    |> map(fn(l) { map(l, fn(s) { result.unwrap(int.parse(s), 0) }) })

  let calorie_totals =
    elf_lists
    |> map(sum)

  fold(calorie_totals, 0, max)
}