require './lib/bubble_sort'
require './test/test_helper'

class BubbleSortTest < Minitest::Test

  def test_bubble_sort_exists
    sorter = BubbleSort.new
    assert_instance_of BubbleSort, sorter
  end

  def test_sorter_can_take_input
    sorter = BubbleSort.new
    test_data = ["z", "e", "p", "k"]
    assert_equal ["e", "k", "p", "z"], sorter.sort(test_data)
  end

  def test_can_count_length_of_input
    sorter = BubbleSort.new
    array = ["d", "b", "a", "c"]
    assert_equal 3, sorter.input_length(array)
  end

  def test_can_sort_two_items
    sorter = BubbleSort.new
    test_data = ["z", "e"]
    assert_equal ["e", "z"], sorter.sort(test_data)
  end

  def test_can_sort_three_items
    sorter = BubbleSort.new
    test_data = ["z", "p", "k"]
    assert_equal ["k", "p", "z"], sorter.sort(test_data)
  end

  def test_can_sort_four_items
    sorter = BubbleSort.new
    test_data = ["z", "e", "p", "k"]
    assert_equal ["e", "k", "p", "z"], sorter.sort(test_data)
  end

  def test_can_sort_strings
    sorter = BubbleSort.new
    test_data = ("A".."Z").to_a.shuffle
    assert_equal ("A".."Z").to_a, sorter.sort(test_data)
  end

  def test_can_sort_integers
    sorter = BubbleSort.new
    test_data = (0..34).to_a.shuffle
    assert_equal (0..34).to_a , sorter.sort(test_data)
  end

  def test_can_sort_combination_strings_and_numbers_as_strings
    sorter = BubbleSort.new
    letters = ("A".."Z").to_a.shuffle
    numbers = ("1".."26").to_a.shuffle
    test_data = letters.zip(numbers).flatten
    assert_equal ["1", "10", "11", "12", "13", "14", "15", "16", "17", "18",
                  "19", "2", "20", "21", "22", "23", "24", "25", "26", "3",
                  "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F",
                  "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R",
                  "S", "T", "U", "V", "W", "X", "Y", "Z"],
                  sorter.sort(test_data)
  end

  def test_can_sort_combination_upcase_and_downcase_strings
    sorter = BubbleSort.new
    upcase_letters = ("A".."Z").to_a.shuffle
    downcase_letters = ("a".."z").to_a.shuffle
    test_data = upcase_letters.zip(downcase_letters).flatten
    assert_equal ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L",
                  "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X",
                  "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                  "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
                  "w", "x", "y", "z"], sorter.sort(test_data)
  end
end
