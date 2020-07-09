module Effect
  def self.reverse
    ->(word) { word.split.map(&:reverse).join }
  end
end
