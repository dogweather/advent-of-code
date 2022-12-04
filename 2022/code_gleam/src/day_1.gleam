import gleam/int
import gleam/list
import gleam/result
import gleam/string

pub fn total_max_calories(input: String) -> Int {
  let cleaned_up_input =
    input
    |> string.split("\n")
    |> list.map(string.trim)

  let elf_lists =
    cleaned_up_input
    |> list.chunk(by: fn(line) { line == "" })
    |> list.filter(fn(inner_list) { inner_list != [""] })
    |> list.map(fn(inner_list) {
      list.map(inner_list, fn(s) { result.unwrap(int.parse(s), -1) })
    })

  let calorie_totals =
    elf_lists
    |> list.map(int.sum)

  assert Ok(max) = list.last(list.sort(calorie_totals, by: int.compare))

  max
}
