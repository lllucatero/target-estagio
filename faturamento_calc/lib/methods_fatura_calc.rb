require 'json'

def faturamentos_totais()
  file = File.read('./data/dados.json')
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
  @faturamentos.min.round(2)
end

def maior_faturamento()
  @faturamentos.max.round(2)
end

def media_faturamentos()
  faturamentos_validos = [] 
  @faturamentos.each {|value| faturamentos_validos.push(value) if value > 0 }
  @media_mensal = (faturamentos_validos.inject(0) {|sum, value| sum += value} / faturamentos_validos.length).round(2)
end

def maior_que_media()
  mais_que_media = 0
  @faturamentos.each {|value| mais_que_media += 1 if value > @media_mensal}
  mais_que_media
end
