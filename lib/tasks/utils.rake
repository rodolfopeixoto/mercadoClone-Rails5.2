namespace :utils do
  desc "Cria administrador fake"
  task generate_admins: :environment do
    puts "Cadastrando administrador padrão"

    10.times do
      Admin.create!(email: Faker::Internet.email,
                    name: Faker::Name.name,
                    password: '123456',
                    password_confirmation: '123456',
                    role: [0,1].sample
                    )
    end
    puts "Administrador cadastrado com sucesso."
  end

end
