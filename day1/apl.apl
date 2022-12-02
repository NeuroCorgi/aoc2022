⍝   New lines should be replaced with space characters
in ← '1000 2000 3000  4000  5000 6000  7000 8000 9000  10000'

⍝   Part 1 solution
⌈/{+/⍎¨' '(≠⊆⊢)⍵}¨((⊢⍱¯1⌽⊢)(⊣∧⊢=1⌽⊢)⍨' '=in)⊆in

⍝   Part 2 solution does not exist yet