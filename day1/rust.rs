use std::fs;

fn main() {
    let file_name = "input.txt";
    let lines = fs::read_to_string(file_name).unwrap();

    let mut sums: Vec<i32> = lines
        .split("\n\n")
        .map(
            |block| block
                    .split("\n")
                    .fold(0, |acc, el| acc + el.parse::<i32>().unwrap())
        )
        .collect();
    sums.sort_by(|a, b| b.cmp(a));

    let p1 = sums 
        .iter()
        .max()
        .unwrap();

    let p2 = sums
        .iter()
        .take(3)
        .sum::<i32>();

    println!("Part 1: {}\nPart 2: {}", p1, p2);
}