# Class Person
class Person 
    attr_reader :name, :deflect

    def initialize(name, hitpoint, attack_damage, deflect)
        @name = name
        @hitpoint = hitpoint
        @attack_damage = attack_damage
        @deflect = deflect
    end

    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
    end

    def attack(other_person)
        r = rand(1..100)
        if r <= other_person.deflect && other_person.deflect != 0
            puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
            puts "#{other_person.name} deflects the attack"

        else
            other_person.take_damage(@attack_damage)
            puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        end 
    end
    
    def take_damage(damage)
        @hitpoint -= damage
    end

    def die?
        if @hitpoint <= 0
            puts "#{name} dies"
            true
        end
    end

    # def deflect_attack(chance)
        
    # end


end
