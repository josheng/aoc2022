# $ cd /
# $ ls
# dir a
# 14848514 b.txt
# 8504156 c.dat
# dir d
# $ cd a
# $ ls
# dir e
# 29116 f
# 2557 g
# 62596 h.lst
# $ cd e
# $ ls
# 584 i
# $ cd ..
# $ cd ..
# $ cd d
# $ ls
# 4060174 j
# 8033020 d.log
# 5626152 d.ext
# 7214296 k

# hash
# if dir make new hash

# store CD into array as a history tracker

#['/','a','e','d']
# a loop counter to check if next line still '..'?
# set a variable as the current dir, which is the hash key

directory = {}
pwd = ""
history = []
direarray = {}

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    if line.strip.split[1] == 'ls'
        next
    # create a new hash if it is a dir
    elsif line.strip.split[0] == 'dir'
        directory[line.strip.split[1]] = pwd
    # handle going back up directory
    elsif line.strip.split[1] == 'cd' && line.strip.split[2] == '..'
        pwd = history[history.index(pwd)-1]
    # save cd command into history and set current working directory
    elsif line.strip.split[1] == 'cd' && line.strip.split[2] != '..'
        history << line.strip.split[2]
        pwd = history[-1]
    else
        directory[line.strip.split[0].to_i] = pwd
    end
    # p pwd
  end
end

directory.each do |item, dir|
  if !direarray.key?(dir)
    direarray[dir] = [item]
  else
    direarray[dir] << item
  end
end

r_direarray = direarray.to_a.reverse.to_h


r_direarray.each do |dir, arr|
  r_direarray[dir] = arr.map do |item|
    if item.class == String
      item = {item => r_direarray.delete(item)}
    else
      item
    end
  end
end


new_direarray = r_direarray.to_a.reverse.to_h

p new_direarray



# direarray.each do |dir, arr|
#   arr.each do |item|
#     if item.class == Hash
#       item.each do |sdir, sarr|
#         arr[sdir] = sarr.map do |sitem|
#           if sitem.class == String
#             sitem = {sitem => direarray.delete(item)}
#           else
#             sitem
#           end
#         end
#       end
#     else
#       item
#     end
#   end
# end

# p direarray
# p directory


      # resolve cd command
      # when line.strip.split[0] == '$' && line.strip.split[1] == 'cd'
      #   # go back up 1 directory
      #   if line.strip.split[3] == '..'
      #     index -= 1
      #   elsif directory.include?(line.strip.split[3])
      #     index = directory.index(line.strip.split[3])
      #   end

      #   pwd = line.string.split[2]
      #   p "lasypwd " + lastpwd
      #   p "pwd " + pwd
      # when line.strip.split[0] == '$' && line.strip.split[1] == 'ls'
      #   next
      # when line.strip.split[0] == 'dir'
      #   if directory.key?(line.strip.split[1])
      #     directory[line.strip.split[1]] = {}
      #   end
      # else
