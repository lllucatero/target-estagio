def reverse_string(string)
  reverse = []
  string.each_char.with_index do |_char, index|
    if index == 0
      reverse << string[-1]
    else
      reverse << string[(string.length - 1) - index]
    end
  end
  puts reverse.join
end