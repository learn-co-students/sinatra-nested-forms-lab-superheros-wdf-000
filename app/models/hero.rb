class Hero
  attr_accessor :name, :power, :bio
  @@all = []

  def self.all
    @@all
  end

  def initialize params
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    self.class.all << self
  end
end
