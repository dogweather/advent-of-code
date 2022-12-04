import day_1


def test_sample_data():
    input = open("./tests/fixtures/day_1_sample_data").readlines()
    assert day_1.total_max_calories(input) == 24000
