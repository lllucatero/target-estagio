require 'json'

def faturamentos_totais()
  file = File.read('./dados.json')
  faturamento_mensal = JSON.parse(file)
  @faturamentos = [] 

  faturamento_mensal.each do |day|
    day.each do |key, value|
      if key == "valor"
        @faturamentos.push(value)
      end
    end
  end
end

def menor_faturamento()
  puts "|  O menor faturamento no mês foi de R$#{@faturamentos.min.round(2)}"
  puts "| -----------------------------------------------------------|"
end

def maior_faturamento()
  puts "|  O maior faturamento no mês foi de R$#{@faturamentos.max.round(2)}"
  puts "| -----------------------------------------------------------|"
end

def media_faturamentos()
  faturamentos_validos = [] 
  @faturamentos.each {|value| faturamentos_validos.push(value) if value > 0 }
  @media_mensal = (faturamentos_validos.inject(0) {|sum, value| sum += value} / faturamentos_validos.length).round(2)

  puts "|  A média de faturamento mensal foi de R$#{@media_mensal}"
  puts "| -----------------------------------------------------------|"
end

def maior_que_media()
  media_faturamentos()

  mais_que_media = 0
  @faturamentos.each {|value| mais_que_media += 1 if value > @media_mensal}

  puts "|  Houve #{mais_que_media} dias em que o faturamento superou a média mensal."
  puts "| -----------------------------------------------------------|"
end