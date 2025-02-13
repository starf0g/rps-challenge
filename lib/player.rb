class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player 
  end

  def update_score(outcome)
    if outcome == 'WIN!'
      @score += 1
    elsif outcome == 'LOSE!'
      @score -= 1
    end
  end

end
