class Bottles
  def verse(verse_number)
    <<~VERSE
      #{number_bottle_string(verse_number)} of beer on the wall, #{number_bottle_string(verse_number)} of beer.
      Take one down and pass it around, #{number_bottle_string(verse_number - 1)} of beer on the wall.
    VERSE
  end

  def number_bottle_string(number)
    if number == 1
      '1 bottle'
    else
      "#{number} bottles"
    end
  end
end
