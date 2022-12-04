import day_1


def test_sample_data():
    input = open("./tests/fixtures/day_1_sample.txt").readlines()

    assert day_1.total_max_calories(input) == 24000


def test_real_data():
    input = open("./tests/fixtures/day_1_input.txt").readlines()

    assert day_1.total_max_calories(input) == 71481
