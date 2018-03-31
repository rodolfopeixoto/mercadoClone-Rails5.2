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



### Links diretos

Desenvolvimento
---------------------
-   [Rodolfo Peixoto](http://www.rogpe.me)
