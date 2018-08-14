class Bottles
  def verse(number)
    reduced_number = number - 1

    if number == 2
      <<~VERSE
        2 bottles of beer on the wall, 2 bottles of beer.
        Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    else
      <<~VERSE
        #{number} bottles of beer on the wall, #{number} bottles of beer.
        Take one down and pass it around, #{reduced_number} bottles of beer on the wall.
      VERSE
    end
  end
end
