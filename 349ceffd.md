---
date: 2021-03-29T21:24
tags:
  - vim
---

# mark basics

`m{a-zA-Z}`: set a "bookmark" at a cursor position.

`'{mark}`: jumps the cursor to first non-whitespace character on the line with.

`` `{mark}``: jump the cursor to the exact mark position.

Uppercase marks are global, and by default are persisted across sessions.
