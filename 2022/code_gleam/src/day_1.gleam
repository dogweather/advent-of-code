import gleam/int.{sum}
import gleam/list.{chunk, filter, map, reverse, sort, take}
import gleam/result
import gleam/string.{split, trim}

pub fn total_max_calories(input: String) -> Int {
  calorie_totals(input)
  |> take(1)
  |> sum
}

pub fn total_top3_calories(input: String) -> Int {
  calorie_totals(input)
  |> take(3)
  |> sum
}

fn calorie_totals(input: String) -> List(Int) {
  let cleaned_up_input =
    input
    |> split("\n")
    |> map(trim)

  let elf_lists =
    cleaned_up_input
    |> chunk(by: fn(line) { line == "" })
    |> filter(fn(l) { l != [""] })
    |> map(fn(l) { map(l, fn(s) { result.unwrap(int.parse(s), 0) }) })

  elf_lists
  |> map(sum)
  |> sort(int.compare)
  |> reverse
}
