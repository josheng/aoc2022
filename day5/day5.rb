#     [C]             [L]         [T]
#     [V] [R] [M]     [T]         [B]
#     [F] [G] [H] [Q] [Q]         [H]
#     [W] [L] [P] [V] [M] [V]     [F]
#     [P] [C] [W] [S] [Z] [B] [S] [P]
# [G] [R] [M] [B] [F] [J] [S] [Z] [D]
# [J] [L] [P] [F] [C] [H] [F] [J] [C]
# [Z] [Q] [F] [L] [G] [W] [H] [F] [M]
#  1   2   3   4   5   6   7   8   9

a1 = ["Z", "J", "G"]
a2 = ["Q", "L", "R", "P", "W", "F", "V", "C"]
a3 = ["F", 'P', 'M','C','L','G','R']
a4 = ['L','F','B','W','P','H','M']
a5 = ['G','C','F','S','V','Q']
a6 = ['W','H','J','Z','M','Q','T','L']
a7 = ['H','F','S','B','V']
a8 = ['F','J','Z','S']
a9 = ['M','C','D','P','F','H','B','T']

hash = {
  1 => a1,
  2 => a2,
  3 => a3,
  4 => a4,
  5 => a5,
  6 => a6,
  7 => a7,
  8 => a8,
  9 => a9
}

File.open("input.txt", "r") do |f|
  f.each_line do |line|
   move = line.split()[1]
   stack1 = line.split()[3]
   stack2 = line.split()[5]
    move.to_i.times do
      hash[stack2.to_i].push(hash[stack1.to_i].pop)
    end
  end
end

topcrate = [a1[-1],a2[-1],a3[-1],a4[-1],a5[-1],a6[-1],a7[-1],a8[-1],a9[-1]]

p topcrate.join
