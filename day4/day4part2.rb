total = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    # split the line into 2 set of ranges
    firstset = line.strip.split(',')[0]
    secondset = line.strip.split(',')[1]
    # split the range into individual value
    firstrange = firstset.split('-')
    secondrange = secondset.split('-')

    # find overlap
    # range 1 second number should be greater or eql to range 2 first number
    # range 1 first number shld be lesser or eql to range 2 secone number
    if firstrange[1].to_i >= secondrange[0].to_i && firstrange[0].to_i <= secondrange[1].to_i
      total += 1
    end
  end
end

p total
