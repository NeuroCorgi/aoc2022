input ← •FLines "input"
data ← •BQN¨¨·(0≠≠¨)⊸((¬-˜⊢×·+`»⊸>)⊸⊔) input

•Out "Part 1: " ∾ •Fmt ⌈´+´¨ data
•Out "Part 2: " ∾ •Fmt +´ 3 ↑ ∨ +´¨ data
