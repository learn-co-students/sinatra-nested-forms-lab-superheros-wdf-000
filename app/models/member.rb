class Member
  attr_accessor :name, :power, :biography

  @@all = []
  def initialize(hash)
    self.name = hash[:name]
    self.power = hash[:power]
    self.biography = hash[:bio]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end


end
