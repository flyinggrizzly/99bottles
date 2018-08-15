class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting
      .downto(ending)
      .collect { |number| verse(number) }.join("\n")
  end

  def verse(number)
    reduced_number = number - 1

    case number
    when 1
      <<~VERSE
        #{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    when 0
      <<~VERSE
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    else
      <<~VERSE
        #{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.
        Take one down and pass it around, #{reduced_number} #{container(reduced_number)} of beer on the wall.
      VERSE
    end
  end

  private

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def pronoun
    'one'
  end
end
