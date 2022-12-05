from itertools import tee

s = open("input.txt").read()

ls1, rs1 = zip(*map(str.split, s.splitlines()))
ls1 = map(lambda c: ord(c) - ord('A') + 1, ls1)
rs1 = map(lambda c: ord(c) - ord('X') + 1, rs1)
score1 = sum(r +(r - l + 4) % 3 * 3 for l, r in zip(ls1, rs1))

ls2, rs2 = zip(*map(str.split, s.splitlines()))
ls2 = map(lambda c: ord(c) - ord('A') + 1, ls2)
rs2 = map(lambda c: ord(c) - ord('X'), rs2)
score2 = sum(3 * r + (l + r + 4) % 3 + 1 for l, r in zip(ls2, rs2))

print("Part 1:", score1)
print("Part 2:", score2)