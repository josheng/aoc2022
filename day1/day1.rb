sum = 0
current = 0
array = []

# File.open("calorie.txt", "r") do |f|
#   f.each_line do |line|
#     if line.to_i.zero?
#       #skip
#       if current > sum
#         sum = current
#         # p sum
#       end
#       current = 0
#       #compare to sum, if bigger replace, else keep
#     else
#       current += line.to_i
#     end
#   end
# end

# p sum
# p current

# find the top 3 elf sum of calorie
File.open("calorie.txt", "r") do |f|
  f.each_line do |line|
    if line.to_i.zero?
      #skip
      array.push(current)
      current = 0
      #compare to sum, if bigger replace, else keep
    else
      current += line.to_i
    end
  end
end

p array.sort[-3..-1].sum
