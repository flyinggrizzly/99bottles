class Bottles
  def verse(count)
    @bottle_number = count

    <<~VERSE
      #{bottles_for(count)} of beer on the wall, #{bottles_for(count)} of beer.
      Take #{bottle_article} down and pass it around, #{bottles_for(count - 1)} of beer on the wall.
    VERSE
  end

  private

  def bottles_for(number)
    if number == 1
      '1 bottle'
    elsif number.zero?
      'no more bottles'
    else
      "#{number} bottles"
    end
  end

  def bottle_article
    if @bottle_number == 1
      'it'
    else
      'one'
    end
  end
end
