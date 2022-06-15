def fibonacci?(fibonacci = [0,1], number)
  while number > fibonacci[-1] do
    fibonacci.push( fibonacci[-2] + fibonacci[-1] )
  end

  if fibonacci.include? number
    puts "O número #{number} é o #{fibonacci.index(number) + 1}º da sequência de Fibonacci."
  else
    puts "O número #{number} não está presente na sequência de Fibonacci."
  end
end