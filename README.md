# rogpe [ MarketPlace ]

Markeplace App

Exemplo da aplicação: 

[www.about.me/rodolfopeixoto](http://www.about.me/rodolfopeixoto) 

Versão do Projeto 0.1
================

Sobre esta versão

---------------------
Site desenvolvido:
Utilizei:
- Ruby 2.4
- Rails 5.2
- GEMs

ATENÇÃO

---------------------

Configuração inicial

---------------------

Documentação
----------------------

For add the gem better_erros

in folder: config/development.rb

```ruby
  BetterErrors::Middleware.allow_ip! 'IP-DOCKER'
```


For add gem rails-i18n

create folder in config/initializers/locale.rb

```ruby
  I18n.default_locale = :"pt-BR"
```

For add gem devise with i18n

```ruby
  gem 'devise-i18n'
```

For generate rails-rnd

```
gem 'rails rnd'
```

Site of the Rails Assets:
[https://rails-assets.org/#/]
(https://rails-assets.org/#/)

Command find_or_create_by for check if exists, case not create.


In controller added layout "nameLayout"

```
  layout "backoffice"
```


#### Bootboxjs

Podemos utilizar uma lib js para alterar o style do alert.

#### Previsualizando MAILER

Poderemos criar um preview para o mailer e visualizarmos o email em http://localhost:3000/rails/mailers

Para utilizar o mailcatcher precisamos adicionar a GEM:

```ruby
 gem 'mailcatcher'
```
Caso esteja usando o docker-compose e tenha criado uma networking, você poderá chamar o container via app:

Pasta: config/environments/development.rb

Em address: 'mailcatcher' é o nome do container no docker-compose.

```ruby
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = { :address => 'mailcatcher', :port => 1025 }
  config.action_mailer.raise_delivery_errors = false
```


#### CICLO AJAX RAILS

VIEW -> CONTROLLER -> *.js.erb -> VIEW

### Links diretos

Desenvolvimento
---------------------
-   [Rodolfo Peixoto](http://www.rogpe.me)
