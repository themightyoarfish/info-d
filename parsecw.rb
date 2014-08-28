lines = IO.readlines ARGV[0]
puzzlearray = []
lines.each do |l|
   tmp = l.split("|")
   tmp.delete "\n"
   tmp.delete ""
   puzzlearray.insert 0, tmp
end
output = []
puzzlearray.each_with_index do |row,i|
   row.each_with_index do |elem,j|
      output.push "#{j}/#{i}/#{puzzlearray[i][j]}" if puzzlearray[i][j] != "*"
   end
end
puts output.join(",")
