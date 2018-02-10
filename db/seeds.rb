puts "Cadastrando as CATEGORIAS..."
categories = [
    "Animais e acessórios",
    "Esportes",
    "Para a sua casa",
    "Eletrônicos e celulares",
    "Música e hobbies",
    "Bebês e crianças",
    "Veículos e barcos",
    "Imóveis",
    "Empregos e negócios"
]

categories.each do |category|
  Category.find_or_create_by(description: category)
end