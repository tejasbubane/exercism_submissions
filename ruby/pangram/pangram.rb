# frozen_string_literal: true

module Pangram
  def self.pangram?(sentence)
    clean(sentence).split('').uniq.sort == ('a'..'z').to_a
  end

  def self.clean(sentence)
    sentence.downcase.scan(/[a-z]*/).join
  end

  private_class_method :clean
end
