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
    case number
    when 1
      <<~VERSE
        #{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.
        Take #{pronoun(number)} down and pass it around, #{quantity} bottles of beer on the wall.
      VERSE
    when 0
      <<~VERSE
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    else
      <<~VERSE
        #{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.
        Take #{pronoun(number)} down and pass it around, #{number - 1} #{container(number - 1)} of beer on the wall.
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

  def pronoun(number)
    if number == 1
      'it'
    else
      'one'
    end
  end

  def quantity(number = 0)
    if number.zero?
      'no more'
    else
      number
    end
  end
end
