class Person

    attr_reader :name, :happiness, :hygiene
    attr_writer 
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
   
    def happiness=(value)
        value = value > 10 ? 10 : value
        value = value < 0 ?  0 : value
        @happiness = value
    end   

    def hygiene=(value)
        value = value > 10 ?  10 : value
        value = value < 0 ? 0 : value
        @hygiene = value
    end

    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(amount)        
        self.bank_account=(@bank_account + amount)
        "all about the benjamins" 
    end

    def take_bath
        self.hygiene=(@hygiene+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness+2)
        self.hygiene=(@hygiene-3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"        
    end

    def start_conversation(person, topic)

        # words = { politics: ['partisan', 'lobbyist'],
        #      weather: ['sun', 'rain'],                                                                      #Method #1
        #      other: ['blah', 'blah'] }   
        
        # message = "blah blah #{words[topic.to_sym][0]} blah #{words[topic.to_sym][1]}" 

        words = { 'politics'=> ['partisan', 'lobbyist'],
                  'weather'=> ['sun', 'rain']}    

        message = "blah blah #{words[topic] ? words[topic][0] : 'blah'} blah #{words[topic] ? words[topic][1] : 'blah'}" 

        puts message

        case topic
            when "politics"
                self.happiness=(@happiness - 2) 
                person.happiness=(person.happiness - 2)
                message 
            when "weather"
                self.happiness=(@happiness + 1) 
                person.happiness=(person.happiness + 1)
                message
            else
                message
        end
            
    end

end
