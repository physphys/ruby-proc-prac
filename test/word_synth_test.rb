require 'minitest/autorun'
require './lib/word_synth'
require './lib/effect'

class WordSynthTest < Minitest::Test
  def test_play
    assert WordSynth
    assert Effect
  end
end
