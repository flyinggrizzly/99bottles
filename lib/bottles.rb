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
    bottle_number = BottleNumber.new(number)
    next_bottle_number = BottleNumber.new(bottle_number.successor)

    "#{bottle_number.quantity.capitalize} #{bottle_number.container} of beer on the wall, " +
      "#{bottle_number.quantity} #{bottle_number.container} of beer.\n" +
      bottle_number.action +
      "#{next_bottle_number.quantity} #{next_bottle_number.container} of beer on the wall.\n"
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
