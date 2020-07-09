require 'minitest/autorun'
require './lib/word_synth'
require './lib/effect'

class WordSynthTest < Minitest::Test
  def test_play
    synth = WordSynth.new

    synth.add_effect(&Effect.echo(2))
    synth.add_effect(&Effect.loud(3))
    synth.add_effect(&Effect.reverse)

    assert_equal('!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!'))
  end
end
