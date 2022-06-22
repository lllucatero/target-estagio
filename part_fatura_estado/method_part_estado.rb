require 'json'

file = File.read('./data/dados.json')
@faturamento_estados = JSON.parse(file)

def faturamento_total()
  @total_faturamento = 0
  @faturamento_estados.each do |estados|
    estados.each_value do |value|
      @total_faturamento += value
    end
  end
end


def participacao_por_estado()
  faturamento_total()
  @faturamento_estados.each do |estados|
    estados.each do |estado, faturamento|
      puts "#{estado}: #{((faturamento / @total_faturamento) * 100).round(2)}%."
    end
  end
end