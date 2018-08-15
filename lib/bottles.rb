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
    when 0
      "#{quantity(number).to_s.capitalize} bottles of beer on the wall, " +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
    else
      "#{quantity(number).to_s.capitalize} #{container(number)} of beer on the wall, " +
        "#{quantity(number)} #{container(number)} of beer.\n" +
        "Take #{pronoun(number)} down and pass it around, " +
        "#{quantity(number - 1)} #{container(number - 1)} of beer on the wall.\n"
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

  def quantity(number)
    if number.zero?
      'no more'
    else
      number
    end
  end
end
