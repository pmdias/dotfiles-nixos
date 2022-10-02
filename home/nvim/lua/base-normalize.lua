local o = vim.opt
local g = vim.g

g.mapleader = ','

-- # ----------------------------------------------------------------
-- #  Normalize vim defaults
-- # ----------------------------------------------------------------

-- Show line numbers
o.number = true

-- Show ruler
o.ruler = true

-- Enable mouse
o.mouse = 'a'

--  Show partial commands in the bottom of the window
o.showcmd = true

-- Activate show mode
o.showmode = true

-- Highlight matching braces
o.showmatch = true

-- Disable any form of bells
o.visualbell = false
o.errorbells = false

-- Activate lazyredraw
o.lazyredraw = true

-- Set UTF-8 as the encoding
o.encoding = 'utf-8'

-- Set backspace
o.backspace = 'eol,start,indent'
