class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(&effect)
    @effects << effect
  end

  def play(words)
    @effects.inject(words) do |_effected_words, effect|
      effect.call(_effected_words)
    end
  end
end
