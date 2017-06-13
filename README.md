# Descrição

Projeto para o teste da Projetas Soluções Integradas utilizando Cucumber, Ruby, Capybara, RSpec.

1. Criar a pasta "tests" dentro da pasta "automacao-frontend"
2. Executar o comando "bundle init" dentro da pasta "tests"
   Adicione as dependências ao Gemfile que foi gerado na pasta tests
   
    # frozen_string_literal: true
    source "http://rubygems.org"

    # gem "rails"   
    gem 'cucumber'
    gem 'capybara'
    gem 'selenium-webdriver'
    gem 'rspec'
    gem 'site_prism'

3. Executar o comando "cucumber --init" dentro da pasta "tests"
4. Executar o comando "mkdir specs" dentro da pasta "features"
5. Executar o comando "bundle install"
6. Adicionar os requires no documento env.rb
   
