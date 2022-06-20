require_relative './lib/methods_fatura_calc.rb'
require_relative './lib/menu.rb'

loop do 
  faturamentos_totais()
  menu

  operation = gets.chomp.to_i
  case operation
  when 1
    print '|  O menor faturamento no mês foi de R$', menor_faturamento()
    puts ''
    puts '|--------------------------------------------------------------|'
  when 2
    print '|  O maior faturamento no mês foi de R$', maior_faturamento()
    puts ''
    puts '|--------------------------------------------------------------|'
  when 3
    print '|  A média de faturamento mensal foi de R$', media_faturamentos()
    puts ''
    print '|  Houve ', maior_que_media(), ' dias em que o faturamento superou a média mensal.'
    puts ''
    puts '|--------------------------------------------------------------|'
  end

  use_again()

end