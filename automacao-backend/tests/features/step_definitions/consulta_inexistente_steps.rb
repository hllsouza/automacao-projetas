# encoding: utf-8

Quando(/^eu bater nesse endpoint com um cep inexistente \(\/id\)$/) do
   @response_id_inexistente = HTTParty.get('http://correiosapi.apphb.com/cep/teste')
end

Então(/^irá me retornar o erro Not Found (\d+)$/) do |arg1|
  puts @response_id_inexistente.read_header
end