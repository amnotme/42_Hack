# str = ARGV
#
# puts str.length
# puts str.to_s
MAP_OF_CHARS = [['*', '*', '*', '*', '*'],
        ['*', '*', '*', '*', '*'],
        ['*', '*', '*', '*', '*'],
        ['*', '*', '*', '*', '*'],
        ['*', '*', '*', '*', '*']]
CHARS = ['r', 'u', 'd', 'l', '?']
def correct_path(str)
  arr = str.split('')
  return "string is too short" if arr.length < 8
  return "string is too big" if arr.length > 24
  # return "string doesn't contain a ?" if !arr.include?('?')
  #
  # MAP_OF_CHARS.each_with_index do |x, i|
  #   x.each_with_index do |y, i2|
  #     if
  #   end
  #
  #
  #   print "#{x}"
  #   print "\n" if i % 5
  # end
  p arr
  point1 = 0
  point2 = 0
  arr.each do |x|
    if x == 'r'
       point1 = point1 + 1
       print "#{point1} -> "
      MAP_OF_CHARS[point1, point2] = 'r'
      p
    elsif x == 'u'
      point2 = point2 + 1
      print "#{point2} ^ "
      MAP_OF_CHARS[point1, point2] = 'u'
    end
  end
  puts
  p MAP_OF_CHARS
  MAP_OF_CHARS.each_with_index do |x, i|
    print x
    print "\n"
  end
  return arr
end
# p MAP_OF_CHARS
correct_path(STDIN.gets.chomp)
