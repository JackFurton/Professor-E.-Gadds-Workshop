#!/usr/bin/env python3
import curses

from curses import wrapper

def main(stdscr):
    stdscr.clear()
    stdscr.addstr("Hello World")
    stdscr.refresh()
    stdscr.getkey()

wrapper(main)

hello
