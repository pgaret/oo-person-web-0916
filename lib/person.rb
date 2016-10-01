# your code goes here
require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @bank_account, @happiness, @hygiene, @name = 25, 8, 8, name
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def happiness=(happy)
    if happy > 10 then @happiness = 10
    elsif happy < 0 then @happiness = 0
    else @happiness = happy end
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def hygiene=(hygiene)
    if hygiene > 10 then @hygiene = 10
    elsif hygiene < 0 then @hygiene = 0
    else @hygiene = hygiene end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      [self, person].each {|someone| someone.happiness -= 2}
      "blah blah partisan blah lobbyist"
    when "weather"
      [self, person].each {|someone| someone.happiness += 1}
      "blah blah sun blah rain"
    else "blah blah blah blah blah" end
  end


end
