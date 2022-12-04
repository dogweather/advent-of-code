from io import TextIOWrapper
from itertools import groupby
import devtools


def total_max_calories(calories_list: TextIOWrapper) -> int:
    """
    Returns the total calories carried by the elf
    who's carrying the most calories.
    """

    cleaned_up_input = [l.strip() for l in calories_list]

    elf_lists = [list(elf) for _, elf in groupby(cleaned_up_input, lambda x: x == "")]
    cleaned_up_elf_lists = [elves for elves in elf_lists if elves != ['']]

    calorie_totals = sorted([sum_calories(elves) for elves in cleaned_up_elf_lists])

    return max(calorie_totals)


def sum_calories(elf_list: list[str]) -> int:
    """
    Returns the sum of the calories in the elf_list.
    """

    return sum([int(c) for c in elf_list])
