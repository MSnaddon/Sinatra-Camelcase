class String
  def camelcase
    return self.split(" ").each {|word| word.capitalize!}.join("")
  end

  def uppercase
    return self.upcase
  end

end