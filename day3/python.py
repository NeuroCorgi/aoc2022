from functools import reduce
from operator import and_


def prior(c):
    return (ord(c) - ord('a') + 1) if 'a' <= c <= 'z' else (ord(c) - ord('A') + 27)


s = open("input.txt").read()
lines = s.splitlines()

# Part 1


score = sum(sum(prior(c) for c in set(line[:len(line) // 2]) & set(line[len(line) // 2:])) for line in s.splitlines())


# Part 2
prior = lambda c: (ord(c) - ord('a') + 1) if 'a' <= c <= 'z' else (ord(c) - ord('A') + 27)

lines = s.splitlines()
score = sum(sum(prior(c) for c in reduce(and_, map(set, lines[i:i + 3]))) for i in range(0, len(lines), 3))
