require "./clamp/*"

module Comparable
  def clamp(lower : T, upper : T)
    return lower if self < lower
    return upper if self > upper
    self
  end
end
