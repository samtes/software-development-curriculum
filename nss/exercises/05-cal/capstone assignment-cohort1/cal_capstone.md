Overview
========

The Unit 1 capstone for this course is the implementation of a subset of the Unix program, `cal`.

The initial milestone of this assignment is to implement a ruby program, `cal.rb` that takes two command-line arguments:

`> ruby cal.rb 12 2012`

and outputs the calendar for that month (12) and year (2012):

       December 2012
    Su Mo Tu We Th Fr Sa
                       1
     2  3  4  5  6  7  8
     9 10 11 12 13 14 15
    16 17 18 19 20 21 22
    23 24 25 26 27 28 29
    30 31

This is functionally equivalent to calling Unix cal with those arguments (`cal 12 2012`) and the output of your program should match that of Unix cal.

We will expand upon this basic functionality to include printing of a full calendar year and a foray back into the world of web programming.

Objectives
==========

  * Practice with Arrays, Hashes, and Strings
  * Develop the logic of a non-trivial algorithm
  * Programming to meet a (changing) specification

Requirements
============

  * Your program must have tests.  These test may be as high-level or as low-level as you wish.
  * You may not use any of the built-in Ruby classes that provide date, time, or calendar functionality.
  * You may not use exec, Kernel, etc. to shell out to any Unix programs.
  * You should not use "magic" numbers.
  * You must commit your code at least once per day and push it to your github repository.
  * As a capstone project, this should demonstrate *your* skills. Do not share code with your peers. You can help each other _think_ about the problems, but don't help each other code.

Resources:
=========

Pictures of the notes we took in class are in the same folder as this document.

Wikipedia articles that may be of use:

  * [http://en.wikipedia.org/wiki/Cal_(Unix)](http://en.wikipedia.org/wiki/Cal_(Unix))
  * [http://en.wikipedia.org/wiki/Gregorian_calendar](http://en.wikipedia.org/wiki/Gregorian_calendar)
  * [http://en.wikipedia.org/wiki/Zeller's_congruence](http://en.wikipedia.org/wiki/Zeller's_congruence)


Deadline
========
This basic functionality should be completed during week 3 (i.e. finished before *Monday, October 1st*).

We will begin work on the expanded functionality during week 4 with the project as a whole to be completed by the end of week 4.