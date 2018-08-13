class Bottles
  def verse(count)
    <<~VERSE
      #{number_bottle_string(count)} of beer on the wall, #{number_bottle_string(count)} of beer.
      Take one down and pass it around, #{number_bottle_string(count - 1)} of beer on the wall.
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
