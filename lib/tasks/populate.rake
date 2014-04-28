namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [Category, Article, User].each(&:delete_all)
    
    Category.populate 20 do |category|
      category.category_id = Faker::Number.digit
      category.name = Populator.words(1..3).titleize
      category.description = Populator.sentences(2..10)
      Article.populate 10..100 do |product|
        article.category_id = category.id
        article.brand_id = brand_id
        article.name = Populator.words(1..5).titleize
        article.details = Populator.sentences(2..10)
      end
    end
    
    #ME FALTA MODIFICAR LOS DATOS DEL USUARIO
    User.populate 100 do |person|
      user.name    = Faker::Name.name
      user.company = Faker::Company.name
      user.email   = Faker::Internet.email
      user.phone   = Faker::PhoneNumber.phone_number
      person.street  = Faker::Address.street_address
      person.city    = Faker::Address.city
      person.state   = Faker::Address.us_state_abbr
      person.zip     = Faker::Address.zip_code
    end
  end
end