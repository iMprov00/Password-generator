class Default_data
    def default_string
        alphabet = [*('a'..'z')]
    end
end

class Generator
    attr_reader :password
    
    def initialize
        @password = ""
    end

    def generate_integer

    end

    def generate_string

    end

    def generate_integer_and_string(length)
        length.times do |n|
            @password += random_variable
        end
    end

    def random_integer
        rand(0..9)
    end

    def random_string
        alphabet = Default_data.new
        rand(0..1) == 1 ? alphabet.default_string[rand(26)].capitalize : alphabet.default_string[rand(26)]
    end

    def random_variable
        rand(0..1) == 1 ? random_integer.to_s : random_string
    end
end

class Message
    def welcome
        puts "Добро пожаловать в генератор паролей!"
    end

    def menu
        puts "1. Генерировать пароль"
        puts "2. Выйти"
    end

    def generate_password_menu
        puts "Выберите тип пароля:"
        puts "1. Только цифры"
        puts "2. Только буквы"
        puts "3. Цифры и буквы"
        puts "4. Назад"
    end

    def length
        puts "Введите длину пароля:"
    end

    def exit
        puts "До свидания!"
    end

    def input
        print "Ввод: "
    end

    def result(password)
        puts "Результат: #{password}"
    end
end

i = gets.to_i
g = Generator.new

g.generate_integer_and_string(i)

puts g.password