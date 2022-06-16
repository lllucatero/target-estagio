require_relative 'faturamento_calc.rb'
require 'json'

def menu
  
  puts "+------------------------------------------------------------+"
  puts "|  FATURA CALC                                               |"
  puts "|------------------------------------------------------------|"
  puts "|  1. Menor faturamento do mês;                              |"                               
  puts "|  2. Maior faturamento do mês;                              |"
  puts "|  3. Média de faturamento e dias acima da média;            |"
  puts "+------------------------------------------------------------+"
  print "|  Selecione a opção desejada: "
  @option = gets.chomp.to_i
  puts "|------------------------------------------------------------|"

end
faturamentos_totais()
menu

case @option
when 1
  menor_faturamento()
when 2
  maior_faturamento()
when 3
  maior_que_media()
end