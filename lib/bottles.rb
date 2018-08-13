class Bottles
  def verse(verse_number)
    <<~VERSE
      #{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.
      Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.
    VERSE
  end
end
