

total = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    # split the line into 2 set of ranges
    firstset = line.strip.split(',')[0]
    secondset = line.strip.split(',')[1]
    # split the range into individual value
    firstrange = firstset.split('-')
    secondrange = secondset.split('-')

    # if the other set is within the range, i.e the first set 1st num is less then or equal second set 1st num etc..
    if firstrange[0].to_i <= secondrange[0].to_i && firstrange[1].to_i >= secondrange[1].to_i
      total += 1
    elsif secondrange[0].to_i <= firstrange[0].to_i && secondrange[1].to_i >= firstrange[1].to_i
      total += 1
    end
  end
end

p total
