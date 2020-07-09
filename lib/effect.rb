module Effect
  def self.reverse
    ->(word) { word.split(' ').map(&:reverse).join(' ') }
  end

  def self.loud(n)
    ->(word) { word.split(' ').map { |e| e.upcase + '!' * n }.join(' ') }
  end

  def self.echo(_n)
    lambda { |word|
      word.split('').map do |e|
        if e == ' '
          e
        else
          e * _n
        end
      end.join('')
    }
  end
end
