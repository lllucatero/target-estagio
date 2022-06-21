def reverse_string_unshift(string)
  reverse = []
  string.each_char.with_index {|_char, index| reverse.unshift(string[index])}
  puts reverse.join
end
