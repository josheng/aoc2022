# get length of word
# cut in half
# compare 1st half vs 2nd half
# check if got same character
# get the points

letters = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26,
  "A" => 27,
  "B" => 28,
  "C" => 29,
  "D" => 30,
  "E" => 31,
  "F" => 32,
  "G" => 33,
  "H" => 34,
  "I" => 35,
  "J" => 36,
  "K" => 37,
  "L" => 38,
  "M" => 39,
  "N" => 40,
  "O" => 41,
  "P" => 42,
  "Q" => 43,
  "R" => 44,
  "S" => 45,
  "T" => 46,
  "U" => 47,
  "V" => 48,
  "W" => 49,
  "X" => 50,
  "Y" => 51,
  "Z" => 52,
}

total = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    # break string in half and convert to hash
    string1 = line[0..(line.length/2-1)].strip.chars.tally
    string2 = line[line.length/2..].strip.chars.tally
    # iterate the string and check if it exist in both hash
    line.each_char do |letter|
      if string1.key?(letter) && string2.key?(letter)
        total += letters[letter]
        string1.delete(letter)
        string2.delete(letter)
      end
    end
  end
  p total
end
