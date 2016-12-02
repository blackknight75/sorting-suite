class InsertionSort
  def sort(input)
    unsorted_input = input
    sorted = []
    until unsorted_input.empty?
      sorted.unshift(unsorted_input.shift)
      (length_measurement(sorted)).times do |index|
        if sorted[index] > sorted[index + 1]
          (sorted[index], sorted[index + 1] = sorted[index + 1], sorted[index])
        end
      end
    end
    sorted
  end

  def length_measurement(sorted)
    sorted.length - 1
  end
end
