#encoding: utf-8

Dado(/^acessar sistema$/) do
   login.load
end

Dado(/^que eu tenho um usuario com os seguintes atributos:$/) do |table|
  @user = table.rows_hash['Login']
  @pwd = table.rows_hash['Senha']
end

Dado(/^que sou "([^"]*)" do sistema$/) do |profile|
  @user = DATA['users'][profile]['username']
  @pwd = DATA['users'][profile]['password']
end

Quando(/^faço login$/) do
 login.with(@user, @pwd)
end

Então(/^vejo o dashboard logado com a mensagem em area segura$/) do
  expect(dash.view_title.text). to eql "You logged into a secure area! ×"
end
