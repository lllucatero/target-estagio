require 'json'

file = File.read('./dados.json')
faturamento_mensal = JSON.parse(file)

def faturamentos_totais(faturamento_mensal)
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

        

end
