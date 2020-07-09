require 'minitest/autorun'
require './lib/effect'

class EffectTest < Minitest::Test
  def test_reverse
    effect = Effect.reverse
    assert_equal('ybuR si !nuf', effect.call('Ruby is fun!'))
  end

  def test_loud
    effect = Effect.loud(3)
    assert_equal('RUBY!!! IS!!! FUN!!!!', effect.call('Ruby is fun!'))
  end

  def test_echo
    effect = Effect.echo(3)
    assert_equal('RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!'))
  end
end
