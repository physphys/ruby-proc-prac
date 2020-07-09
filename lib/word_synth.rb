class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(words)
    @effects.inject(words) do |word, effect|
      effect.call(word)
    end
  end
end
