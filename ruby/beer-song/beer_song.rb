class BeerSong
  def verse(number)
    case number
    when 0
      zero_verse
    when 1
      one_verse
    when 2
      two_verse
    else
      common_verse(number)
    end
  end

  def verses(from, to)
    (to..from).to_a.reverse.reduce('') do |result, number|
      result + verse(number) + "\n"
    end
  end

  def sing
    verses(99, 0)
  end

  private

  def common_verse(number)
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"\
    "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
  end

  def one_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def two_verse
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def zero_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end
