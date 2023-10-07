input ← (-⟜"A X")¨ •FLines "input"

#    win‿lose‿draw
score1 ← 6‿0‿3
•Out "Part 1: " ∾ •Fmt +´ ((2⊸⊑)+(⊑⟜score1 3⊸|∘-˜´))¨ input + 1
•Out "Part 2: " ∾ •Fmt +´ ((3⊸× 2⊸⊑)+((1⊸+)∘(3⊸|)∘⊑ (2⊸⊑)◶⟨-⟜1, ⊢, +⟜1⟩))¨ input
