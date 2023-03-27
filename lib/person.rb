# your code goes here
class Person

attr_reader :name, :friend
attr_accessor :bank_account, :happiness, :hygiene

def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

def happiness=(count)
    @happiness = count
    if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      else
        @happiness
      end
end

def hygiene=(count)
    @hygiene = count
    if @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      else
        @hygiene
      end
end

def clean?
 if self.hygiene > 7
    return true
 else
    return false
 end
end

def happy?
  if self.happiness > 7
    return true
  else 
    return false
  end
end

def get_paid(amount)
    puts self.bank_account += amount
    return "all about the benjamins"
end

def work_out
     puts self.happiness += 2
     puts self.hygiene -= 3
     return "♪ another one bites the dust ♫"
end  

def take_bath
    puts self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def call_friend(friend)
    puts self.happiness += 3
    puts friend.happiness += 3 
    return "Hi #{friend.name}! It's #{self.name}. How are you?" 
end

def start_conversation(friend, topic)
     if topic == "politics"
        self.happiness -= 2
        friend.happiness -= 2
        return "blah blah partisan blah lobbyist"
     elsif topic == "weather"
        self.happiness += 1
        friend.happiness += 1
        return "blah blah sun blah rain"
     else
        return "blah blah blah blah blah"
     end
end

end

penelope = Person.new("Penelope")
puts penelope.name
puts penelope.bank_account
puts penelope.happiness
puts penelope.hygiene
puts penelope.clean?
puts penelope.happy?
puts penelope.get_paid(500)
puts penelope.work_out
puts penelope.take_bath

felix = Person.new("Felix")
puts penelope.call_friend(felix)
puts penelope.start_conversation(felix,"programming")














