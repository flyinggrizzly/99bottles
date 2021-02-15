class Bottles
  def verse(number)
    reduced_number = number - 1

    case number
    when 2
      <<~VERSE
        2 bottles of beer on the wall, 2 bottles of beer.
        Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    when 1
      <<~VERSE
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    when 0
      <<~VERSE
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    else
      <<~VERSE
        #{number} bottles of beer on the wall, #{number} bottles of beer.
        Take one down and pass it around, #{reduced_number} bottles of beer on the wall.
      VERSE
    end
  end

  def verses(starting, ending)
    starting
      .downto(ending)
      .collect { |number| verse(number) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
