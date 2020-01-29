require 'pry'

class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end 

    def happiness=(num)
        @happiness = num 
        @happiness = 10 if @happiness > 10 
        @happiness = 0 if @happiness < 0 
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10 
        @hygiene = 0 if @hygiene < 0 
    end

    def happy?
        if @happiness > 7 
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7 
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary 
        return "all about the benjamins"
    end

    def take_bath
        # @hygiene += 4
        # self.hygiene=(@hygiene)

        self.hygiene += 4 

        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        convo = [self, person]   
        if topic == "politics" 
            convo.each {|c| c.happiness -= 2}
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            convo.each {|c| c.happiness += 1}
         return 'blah blah sun blah rain'
        else 
            return "blah blah blah blah blah"
        end
    end

    


    
      
end 

# binding.pry 
# 0

