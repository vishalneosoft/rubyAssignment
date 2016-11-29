puts "Enter the no. of line"
row = gets.chomp.to_i
space_line = row
i = 1
j = 1
k = 1
while i <= row
  space_line = row
  while space_line > i
    print "  "
    space_line = space_line - 1
  end
  k = i
  while k <= 2*i-1
    print " #{k}"
    k = k + 1
  end
  l = i*2-1
  while l > i
    print " #{l-1}"
    l = l - 1
  end
  puts 
  i = i+1
end