class Member 
  attr_accessor :name, :power, :bio, :team
  @@all = []

  def initialize(attr)
    attr.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
