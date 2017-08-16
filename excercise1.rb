def say_hello name1, name2
    if name1.empty? or name2.empty?
        return "Who are you?!"
    end

    "Hello, #{name1} and #{name2}"
    end
    puts say_hello "Bryson", "McKenzie"