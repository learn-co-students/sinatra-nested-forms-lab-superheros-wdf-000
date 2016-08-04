class Team
  attr_accessor :name, :motto
  attr_reader :members 
  @@all = []

  def initialize(attr)
    #binding.pry 
    attr.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def members=(members)
    @members = members.map do |member|
      new_hero = Member.new(member)
      new_hero.team = self
      new_hero
    end
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end

