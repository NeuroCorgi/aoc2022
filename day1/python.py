def solution(s: str, n: int) -> int:
    return sum(sorted((sum(map(int, l.split("\n"))) for l in s.strip().split("\n\n")), reverse=True)[:n])


s = open("input.txt").read()

print("Part 1: ", solution(s, 1))
print("Part 2: ", solution(s, 3))