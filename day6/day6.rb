
  1
# mjqjpqmgbljsphdztnvjfqwrcgsmlb
   2

letter = []
counter = 1
signal = ""

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    signal = line.strip
  end
end

signal.each_char do |x|
  while letter.any?(x) do
    letter.shift
  end
  letter.push(x)
  break if letter.length == 14
  counter += 1
end

p letter
p counter
