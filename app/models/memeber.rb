class Memeber
  attr_reader :name, :power, :bio
  MEMEBERS = []
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    MEMEBERS << self
  end

  def self.all
    MEMEBERS
  end
end
