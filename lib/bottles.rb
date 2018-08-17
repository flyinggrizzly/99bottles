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
    bottle_number = bottle_number_for(number)
    next_bottle_number = bottle_number_for(bottle_number.successor)

    "#{bottle_number} of beer on the wall, ".capitalize +
      "#{bottle_number} of beer.\n" +
      bottle_number.action +
      "#{next_bottle_number} of beer on the wall.\n"
  end

  private

  def bottle_number_for(number)
    if number.zero?
      BottleNumber0
    else
      BottleNumber
    end
      .new(number)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    "#{quantity} #{container}"
  end

  def container
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def pronoun
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

  def action
    if number.zero?
      "Go to the store and buy some more, "
    else
      "Take #{pronoun} down and pass it around, "
    end
  end

  def successor
    if number.zero?
      99
    else
      number - 1
    end
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    'no more'
  end
end
