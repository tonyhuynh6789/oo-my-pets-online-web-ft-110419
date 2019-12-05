# require "pry"
class Owner
 
  attr_reader :name, :species
 

@@all = []


  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
  end


  def say_species 
    "I am a human."
  end 


  def self.all
    @@all
  end 


  def self.count 
    @@all.count
  end 


  def self.reset_all
    @@all.clear
  end 


  def cats
    Cat.all.select {|x| x.owner == self}
  end 


  def dogs
    Dog.all.select {|x| x.owner == self}
  end 


  def buy_cat(name)
    Cat.new(name, self)
  end 


  def buy_dog(name)
    Dog.new(name, self)
  end 

  def walk_dogs
    dogs.each {|dog| dog.mood = 'happy'}
  end 

  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end 



  def sell_pets 
    dogs.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
    end 
    cats.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
    end 
  end 



  def list_pets 
     "I have #{cats.size} dog(s), and #{dogs.size} cat(s)."
  end 





end