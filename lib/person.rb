class Person

    attr_reader :name, :hygiene, :happiness
    attr_writer 
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness= (happiness)
       if happiness >= 10
        @happiness = 10
       elsif happiness <=0
        @happiness = 0
       else
        @happiness = happiness
       end
       @happiness

    end
    
    def hygiene= (hygiene) 
        if hygiene >= 10
         @hygiene = 10
        elsif hygiene <=0
         @hygiene = 0
        else
         @hygiene = hygiene
        end
        @hygiene
    end
   
    def happy?
        return @happiness > 7 
    end

    def clean? 
        return @hygiene > 7 
    end

    def get_paid(salary)
        @bank_account += salary 
        'all about the benjamins'
    end

    def take_bath
        @hygiene += 4

        self.hygiene = @hygiene

        "♪ Rub-a-dub just relaxing in the tub ♫"
        
    end

    def work_out
        @hygiene -= 3
        self.hygiene = @hygiene
        
        @happiness +=2
        self.happiness = @happiness
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

end
