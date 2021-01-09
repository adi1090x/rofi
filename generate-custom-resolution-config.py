#!/usr/bin/env python3
"""This script generates new rofi config files for the given resolution

The script looks at the directories 720p/ and 1080p/ and tries to generate a
new directory "{resolution}p" where the numbers are adjusted. It does this by
going through all files in the initial directories and scaling changed numbers
linearly.
For example: If a number is 2 for 720p, 3 for 1080p, and you generate for 1400p
You will end up with 4 for 1440p.
Likewise 5 (2+3) (720p) and 6 (3+3) (1080p) would yield 7 (4+3).
"""
from sys import stderr
import re
from argparse import ArgumentParser
from os import walk
from shutil import copytree
import numpy as np

number = re.compile(r"\d+(\.\d+)?")


def scale_x_to_1440p(a, b):
    m = np.array([[720, 1], [1080, 1]])
    s = np.array([a, b])
    x, y = np.linalg.solve(m, s)
    c = x*1440 + y
    return round(c, 2)


def convert_lines(line_from, line_to):
    start_ws = line_from.removesuffix(line_from.lstrip())
    line_from_fields = line_from.split()
    line_to_fields = line_to.split()
    line_out_fields = []

    for idx, field in enumerate(line_from_fields):
        searched_num_in_from = re.search(number, field)
        try:
            searched_num_in_to = re.search(number, line_to_fields[idx])
        except IndexError:
            searched_num_in_to = None

        if searched_num_in_from and searched_num_in_to:
            num_in_from = searched_num_in_from.group()
            num_in_to = searched_num_in_to.group()

            # scale and replace if number differs
            if num_in_from != num_in_to:
                scaled_field = scale_x_to_1440p(float(num_in_from),
                                                float(num_in_to))
                field = field.replace(str(num_in_from), f"{scaled_field:g}")

        line_out_fields.append(field)

    line_out = " ".join(line_out_fields)
    return f"{start_ws}{line_out}\n"


def main(resolution):
    scale_from = 720
    scale_to = 1080

    try:
        copytree(f"{scale_from}p", f"{resolution}p")
    except FileExistsError:
        print(f"There is already a file or directory called \"{resolution}p\"."
              "Please remove it before running the script!", file=stderr)
        exit(1)

    # loop over all files
    for root, dirnames, filenames in walk(f"{scale_from}p"):
        for filename in filenames:
            # cut away basedir
            filename = f"{root}/{filename}".removeprefix(f"{scale_from}p/")

            # compare files
            file_from = open(f"{scale_from}p/{filename}", "r")
            file_to = open(f"{scale_to}p/{filename}", "r")

            line_from = file_from.readline()
            line_to = file_to.readline()
            lines_new_resolution = ""

            while line_from or line_to:
                if line_from != line_to:
                    lines_new_resolution += convert_lines(line_from, line_to)
                else:
                    lines_new_resolution += line_from

                # go to next line
                line_from = file_from.readline()
                line_to = file_to.readline()

            file_from.close()
            file_to.close()

            with open(f"{resolution}p/{filename}", "w") as file_out:
                file_out.write(lines_new_resolution)


if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument(
        "resolution",
        type=int,
        help="Height of of your screens resolution, e.g. 1440 for 2560x1440",
    )
    args = parser.parse_args()

    main(args.resolution)
