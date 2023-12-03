# Advent of Code 2023

To run tests:

```
$ stack test 
```

To run app:

```
$ stack run
$ stack run 01
```

Advent of Code Day 1
- Part 1
    - a document
    - lines of text
    - each line was originally calibration data
    - combine first and last digit (number) in each line
    - concat the two digits together `a13bcd6da => 16`
    - sum of all calibration values
- Part 2
    - convert text of a number to its digit `two => 2`
    - run same calculation
    - reference solution: https://github.com/Hydrostatik/haskell-aoc-2023/
