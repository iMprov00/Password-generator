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

    def generate_integer(length)
        length.times{@password += random_integer}
    end

    def generate_string(length)
        length.times{@password += random_string}
    end

    def generate_integer_and_string(length)
        length.times{@password += random_variable}
    end

    def random_integer
        rand(0..9).to_s
    end

    def random_string
        alphabet = Default_data.new
        rand(0..1) == 1 ? alphabet.default_string[rand(26)].capitalize : alphabet.default_string[rand(26)]
    end

    def random_variable
        rand(0..1) == 1 ? random_integer : random_string
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

	def clear 
		puts "\e[H\e[2J"
	end 
end

