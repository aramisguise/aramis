#!/usr/bin/env python


NUM = 23

GUESS = int(raw_input('Guess a number: '))

if GUESS == NUM:
    print "Congrats - good guess!"
elif GUESS < NUM:
    print "Try again (CLUE: higher number)"
else:
    print "Try again (CLUE: lower number)"



