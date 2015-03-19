def spirals(start, width)
  result = Array.new(width) { Array.new(width,0) }

  upper_bound = 0
  bottom_bound = width - 1
  left_bound = 0
  right_bound = width - 1
  number = start

  increment = ->(first_bound, second_bound){

  }

  return [] if width == 0
  
  while(upper_bound <= width / 2)
    (left_bound..right_bound).each do |i|
      result[upper_bound][i] = number
      number += 1
    end

    unless(number == width * width + number - 1)
      upper_bound += 1

      (upper_bound..bottom_bound).each do |i|
        result[i][right_bound] = number
        number += 1
      end

      right_bound -= 1

      right_bound.downto(left_bound) do |i|
        result[bottom_bound][i] = number
        number += 1
      end

      bottom_bound -= 1

      bottom_bound.downto(upper_bound) do |i|
        result[i][left_bound] = number
        number += 1
      end
    end

    left_bound += 1
  end #while
  result
end #def
