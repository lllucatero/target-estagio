def menu
  
  puts '+--------------------------------------------------------------+'
  puts '|  FATURA CALC                                                 |'
  puts '|--------------------------------------------------------------|'
  puts '|  1. Menor faturamento do mês;                                |'                               
  puts '|  2. Maior faturamento do mês;                                |'
  puts '|  3. Média de faturamento e dias acima da média;              |'
  puts '+--------------------------------------------------------------+'
  print '| Selecione a opção desejada: '

end

def use_again
  puts  '|                                                              |'
  puts  '|  Deseja continuar?                                           |'
  puts  '|  Pressione S para Sim                                        |'
  puts  '|  Pressione N para Não                                        |'
  option = gets.chomp
  if option.upcase == "N"
      exit
  end
end