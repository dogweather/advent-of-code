import day_1


def test_sample_data():
    input = open("./tests/fixtures/day_1_sample.txt")

    assert day_1.total_max_calories(input) == 24000


# def test_real_data():
#     input = open("./tests/fixtures/day_1_input.txt")

#     assert day_1.total_max_calories(input) == 71780
