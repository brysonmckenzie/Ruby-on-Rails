class Human
    def intialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
 
    def attack(obj)
        if obj.class.ancestors.include?(Human)
        obj.health -= 10
            true
        else
            false
        end
    end
end

