#class RubyHomework
  # Return a reversed copy of the array


  def reverse(an_array)

    arr = []

    arr << an_array.reverse

    return arr
  end


 # Sum all the numbers in the array
  # an_array can contain lots of different things
  # Be sure to only sum the numbers
  # (Hint: the is_a? method might be useful here)
  def sum_only_numbers(an_array)

    sum = 0

    an_array.each { |y| sum+=y if y.is_a?Numeric }

    return sum
  end


  # For i from 1 to 100, return an array.
  # The elements in the array should follow this algorithm:
  # If i is a multiple of 3, the element is 'Fizz'
  # If i is a multiple of 5, the element is 'Buzz'
  # If i is a multiple of 3 and 5, the element is 'FizzBuzz'
  # Otherwise, the element is simply the value of i
  # For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
  def fizzbuzz

    output = []

    (1..100).each do |i|
      if (i % 3 == 0) && (i % 5 == 0)
        output << "Fizzbuzz"
      elseif (i % 3 == 0)
        output << "Fizz"
      elseif (i % 5 == 0)
        output << "Buzz"
      else
        output << i
      end
    end

    return output
  end

  # Return a map of letters and counts of letters
  # Letters should be lowercase before counting
  # For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
  def histogram(a_string)
    a_string = a_string.downcase
    words = a_string.split(" ")
    frequencies = Hash.new(0)
    words.each { |word| frequencies[word] += 1}
    frequencies = frequencies.sort_by { |a, b| b }
    frequencies.reverse!

    return frequencies
  end


  # Uncomment a line to test the function you are developing
  # puts reverse([3,6,'dog']).inspect
  # Type "ruby functions.rb" at command line (Konsole) to run the script# puts reverse([3,6,'dog']).inspect
  # puts histogram('The Quick brown fox').inspect
  # puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
  # puts fizzbuzz.join("\n")



