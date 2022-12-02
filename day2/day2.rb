# A, X = rock 1
# B, Y = paper 2
# C, Z = scissor 3
# win = 6, draw = 3, lose = 0

# part 1scenario
# rock beat paper

# A X rock v rock 1, 3 = 4
# A Y rock v paper 2, 6 = 8
# A Z rock v scissor 3, 0 = 3

# B X paper v rock 1, 0 = 1
# B Y paper v paper 2, 3 = 5
# B Z paper v scissor 3, 6 = 9

# C X scissor v rock 1, 6 = 7
# C Y scissor v paper 2, 0 = 2
# C Z scissor v scissor 3, 3 = 6

# part 2
# X = LOSE
# Y = DRAW
# Z = WIN
# A X rock v scissor 3, 0 = 3
# A Y rock v rock 1, 3 = 4
# A Z rock v paper 2, 6 = 8

# B X paper v rock 1, 0 = 1
# B Y paper v paper 2, 3 = 5
# B Z paper v scissor 3, 6 = 9

# C X scissor v paper 2, 0 = 2
# C Y scissor v scissor 3, 3 = 6
# C Z scissor v rock 1, 6 = 7

result = {
  "A X" => 3,
  "A Y" => 4,
  "A Z" => 8,
  "B X" => 1,
  "B Y" => 5,
  "B Z" => 9,
  "C X" => 2,
  "C Y" => 6,
  "C Z" => 7,
}

total = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    total += result[line.strip]
  end
end

p total
