class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting_verse, ending_verse)
    starting_verse
      .downto(ending_verse)
      .collect { |number| verse(number) }.join("\n")
  end

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, " +
      "#{quantity(number)} #{container(number)} of beer.\n" +
      action_for(number) +
      "#{quantity(successor(number))} #{container(successor(number))} of beer on the wall.\n"
  end

  private

  def container(number)
    BottleNumber.new(number).container
  end

  def pronoun(number)
    BottleNumber.new(number).pronoun(number)
  end

  def quantity(number)
    BottleNumber.new(number).quantity
  end

  def action_for(number)
    BottleNumber.new(number).action_for(number)
  end

  def successor(number)
    BottleNumber.new(number).successor(number)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container
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

  def quantity
    if number.zero?
      'no more'
    else
      number.to_s
    end
  end

  def action_for(number)
    if number.zero?
      "Go to the store and buy some more, "
    else
      "Take #{pronoun(number)} down and pass it around, "
    end
  end

  def successor(number)
    if number.zero?
      99
    else
      number - 1
    end
  end
end
