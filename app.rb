class Generator

    

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