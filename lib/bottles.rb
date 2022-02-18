# frozen_string_literal: true

class Bottles
  def initialize; end

  def verse(verse_num)
    case verse_num
    when 2 then verse2
    when 1 then verse1
    when 0 then verse0
    else verse_over2(verse_num)
    end
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse)
               .map { |verse_num| verse(verse_num) }
               .join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def verse_over2(verse_num)
    <<~VERSE
      #{verse_num} bottles of beer on the wall, #{verse_num} bottles of beer.
      Take one down and pass it around, #{verse_num - 1} bottles of beer on the wall.
    VERSE
  end

  def verse2
    <<~VERSE
      2 bottles of beer on the wall, 2 bottles of beer.
      Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
  end

  def verse1
    <<~VERSE
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
  end

  def verse0
    <<~VERSE
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
  end
end
