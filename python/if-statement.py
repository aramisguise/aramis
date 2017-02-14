#!/usr/bin/env python


var_NUM = 23

var_GUESS = int(raw_input('Guess a number: '))

var_TOO_LOW = "Try again (CLUE: higher than {guess})"
var_TOO_HIGH = "Try again (CLUE: lower than {guess})"
var_RIGHT = "Congrats - {guess} is correct"


if var_GUESS == var_NUM:
    print var_RIGHT.format(guess=var_GUESS)
elif var_GUESS < var_NUM:
    print var_TOO_LOW.format(guess=var_GUESS)
else:
    print var_TOO_HIGH.format(guess=var_GUESS)

