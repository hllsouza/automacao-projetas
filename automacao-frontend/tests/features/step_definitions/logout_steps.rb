#encoding: utf-8

Dado(/^usuário acessa dashboard$/) do
    login.load
    login.with('tomsmith', 'SuperSecretPassword!')
end

Quando(/^realizo logout do sistema$/) do
  dash.do_logout
end

Então(/^vejo mensagem de deslogado de area segura$/) do
  expect(login.view_title_logout.text). to eql "You logged out of the secure area! ×"
end