
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
counter = 0
longstring = ""
string1 = {}
string2 = {}
string3 = {}

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    # concat every 3 lines
    longstring += line.strip
    # set string to hash
    string1 = line.strip.chars.tally if counter == 0
    string2 = line.strip.chars.tally if counter == 1
    string3 = line.strip.chars.tally if counter == 2
    counter+=1

    # iterate the long string and check if it exist in all 3 hash
    if counter == 3
      longstring.each_char do |letter|
        if string1.key?(letter) && string2.key?(letter) && string3.key?(letter)
          total += letters[letter]
          string1.delete(letter)
          string2.delete(letter)
          string3.delete(letter)
        end
      end
      counter = 0
      longstring = ""
    end
  end
end

p total
