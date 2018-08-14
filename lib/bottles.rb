class Bottles
  def verse(count)
    @bottles_on_wall = count

    <<~VERSE
      #{line_one}
      #{line_two}
    VERSE
  end

  def verses(*counts)
    requested_verses = counts.collect do |count|
      verse(count)
    end

    requested_verses.join("\n")
  end

  private

  def line_one
    count = @bottles_on_wall

    "#{bottles_for(count, capital: true)} of beer on the wall, #{bottles_for(count)} of beer."
  end

  def line_two
    count = @bottles_on_wall - 1 # drank it y'all

    if any_bottles_on_wall?
      "Take #{bottle_article} down and pass it around, #{bottles_for(count)} of beer on the wall."
    else
      'Go to the store and buy some more, 99 bottles of beer on the wall.'
    end
  end

  def bottles_for(number, capital: false)
    if number == 1
      '1 bottle'
    elsif number.zero?
      capital ? 'No more bottles' : 'no more bottles'
    else
      "#{number} bottles"
    end
  end

  def bottle_article
    if @bottles_on_wall == 1
      'it'
    else
      'one'
    end
  end

  def any_bottles_on_wall?
    @bottles_on_wall.positive?
  end
end
