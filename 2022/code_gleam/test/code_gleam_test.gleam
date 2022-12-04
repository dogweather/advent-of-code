import gleam/erlang/file
import gleeunit
import gleeunit/should
import day_1

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hello_world_test() {
  assert Ok(input) = file.read("./test/fixtures/day_1_sample.txt")

  day_1.total_max_calories(input)
  |> should.equal(24000)
}
