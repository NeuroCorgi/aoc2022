data ← ⊃⎕NGET '<file_path>' 1
p ← 'A X' 'A Y' 'A Z' 'B X' 'B Y' 'B Z' 'C X' 'C Y' 'C Z'
v1 ← 4 8 3 1 5 9 7 2 6
part1 ← +/v1[p⍳data]
v2 ← 3 4 8 1 5 9 2 6 7
part2 ← +/v2[p⍳data]
