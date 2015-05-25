class FoodChainSong
  Creature = Struct.new(:name, :exclaimation, :recitation)

  CREATURES = [
    Creature.new("fly",
                 "I don't know why she swallowed the fly. Perhaps she'll die.",
                 "I don't know why she swallowed the fly. Perhaps she'll die."),
    Creature.new("spider",
                 "It wriggled and jiggled and tickled inside her.",
                 "She swallowed the spider to catch the fly."),
    Creature.new("bird",
                 "How absurd to swallow a bird!",
                 "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her."),
    Creature.new("cat",
                 "Imagine that, to swallow a cat!",
                 "She swallowed the cat to catch the bird."),
    Creature.new("dog",
                 "What a hog, to swallow a dog!",
                 "She swallowed the dog to catch the cat."),
    Creature.new("goat",
                 "Just opened her throat and swallowed a goat!",
                 "She swallowed the goat to catch the dog."),
    Creature.new("cow",
                 "I don't know how she swallowed a cow!",
                 "She swallowed the cow to catch the goat."),
    Creature.new("horse",
                 "She's dead, of course!")
  ]

  def verse(arg)
    creature_list = CREATURES[0...arg].reverse
    result = ""
    creature_list.each_with_index do |creature, index|
      result += "I know an old lady who swallowed a #{creature.name}.\n"\
                "#{creature.exclaimation}\n" if index == 0
      result += "#{creature.recitation}\n" unless first_or_last(arg)
    end
    result
  end

  def verses(arg1, arg2)
    "#{verse(arg1)}\n#{verse(arg2)}\n"
  end

  def sing
    verses(1, CREATURES.length)
  end

  private

  def first_or_last(arg)
    arg == 1 || arg == CREATURES.length
  end

end
