class Bottles
  def verse(number)
    reduced_number = number - 1

    <<~VERSE
      #{number} bottles of beer on the wall, #{number} bottles of beer.
      Take one down and pass it around, #{reduced_number} bottles of beer on the wall.
    VERSE
  end
end
