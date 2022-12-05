import gleam/erlang/file
import gleeunit
import gleeunit/should
import day_1

pub fn main() {
  gleeunit.main()
}

pub fn sample_data_test() {
  assert Ok(input) = file.read("./test/fixtures/day_1_sample.txt")

  day_1.total_max_calories(input)
  |> should.equal(24000)
}

pub fn real_data_test() {
  assert Ok(input) = file.read("./test/fixtures/day_1_input.txt")

  day_1.total_max_calories(input)
  |> should.equal(71780)
}

pub fn sample_top3_data_test() {
  assert Ok(input) = file.read("./test/fixtures/day_1_sample.txt")

  day_1.total_top3_calories(input)
  |> should.equal(45000)
}
