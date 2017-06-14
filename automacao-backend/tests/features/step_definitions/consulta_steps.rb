#encoding: utf-8

Dado(/^que eu acesse endereco do sistema$/) do
  @response = HTTParty.get('http://correiosapi.apphb.com')
end

Quando(/^eu bater no endpoint com um cep$/) do
  @response_id = HTTParty.get('http://correiosapi.apphb.com/cep/73081501')
end

Entao(/^ira me retornar os dados do cep$/) do
  puts @response_id.body
end