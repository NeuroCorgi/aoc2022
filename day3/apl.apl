data ← ⊃⎕NGET '<file_path>' 1
v ←  'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
⎕ ← part1 ← +⌿v⍳↑(∪((2÷⍨≢)((⊣↑⊢)∩((-⊣)↑⊢))⊢))¨data
⎕ ← part2 ← +⌿v⍳↑∪¨↑(∩/)¨(1=3|⍳≢data) ⊂ data