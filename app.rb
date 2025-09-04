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

    def error
        puts "Некорретный ввод!"
    end

    def next 
        print "Нажмите Enter чтобы продолжить..."
    end
end

def slepeng
    sleep(1)
end

message = Message.new


message.clear
message.welcome
slepeng

loop do 
    message.clear

    generate = Generator.new

    message.menu 
    message.input
    input = gets.chomp

    case input
    when "1"

        message.clear
        message.generate_password_menu
        message.input
        input_2 = gets.chomp

        case input_2
        when "1"
            message.clear
            message.length
            message.input
            input_length = gets.to_i

            generate.generate_integer(input_length)
            message.result(generate.password)

            message.next
            gets

        when "2"
            message.clear
            message.length
            message.input
            input_length = gets.to_i

            generate.generate_string(input_length)
            message.result(generate.password)

            message.next
            gets

        when "3"
            message.clear
            message.length
            message.input
            input_length = gets.to_i

            generate.generate_integer_and_string(input_length)
            message.result(generate.password)

            message.next
            gets

        when "4"
            return
        else
            message.clear
            message.error
            slepeng
        end
    when "2"
        message.clear
        message.exit
        slepeng
        exit
    else 
        message.clear
        message.error
        slepeng
    end
end