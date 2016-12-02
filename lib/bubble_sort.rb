require 'pry'
class BubbleSort
  def sort(input)
    loop do
      swapped = false
      input_length(input).times do |index|
        if input[index] > input[index + 1]
          input[index], input[index + 1] = input[index + 1], input[index]
          swapped = true
        end
      end
      break unless swapped
    end
    input
  end

  def input_length(input)
    input.length - 1
  end
end
