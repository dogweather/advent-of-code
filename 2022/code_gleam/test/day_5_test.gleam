import gleeunit
import gleeunit/should
import day_5

pub fn main() {
  gleeunit.main()
}

pub fn sample_data_test() {
  day_5.top_crates(sample_input)
  |> should.equal("CMZ")
}

// pub fn real_data_test() {
//   assert Ok(input) = file.read("./test/fixtures/day_5_input.txt")

//   day_5.top_crates(input)
//   |> should.equal(71780)
// }

// pub fn sample_top3_data_test() {
//   assert Ok(input) = file.read("./test/fixtures/day_5_sample.txt")

//   day_5.total_top3_calories(input)
//   |> should.equal(45000)
// }

// pub fn sample_top3_real_data_test() {
//   assert Ok(input) = file.read("./test/fixtures/day_5_input.txt")

//   day_5.total_top3_calories(input)
//   |> should.equal(212489)
// }

const sample_input: String = "    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2"
