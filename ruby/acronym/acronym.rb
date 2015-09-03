module Acronym

  VERSION = 1

  def self.abbreviate(name)
    words(name).map do |word|
      acr = word.scan(/[A-Z]/)
      acr.empty? || acr.length == word.length ? word.chr.upcase : acr
    end.join
  end

  def self.words(name)
    name.scan(/\w+/)
  end

end
