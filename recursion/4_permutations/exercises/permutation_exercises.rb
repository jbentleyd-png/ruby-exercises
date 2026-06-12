def permutations(array)
  # Write a method that takes in an array of integers and returns an array of
  # all possible permutations of the original array. The permutations of a set
  # are the different ways the elements can be arranged.
  #
  # For simplicity, the integers are guaranteed to not repeat.
  #
  # Examples:
  # `permutations([1, 2, 3])` has six different permutations (or ways the elements can be arranged)
  #  it should return `[[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]`
  #
  # `permutations([])` returns `[[]]`, as there's only one arrangement of an empty set
  #
  # NOTE: the tests do not check for ordering, so a return of `[[1, 2], [2, 1]]`
  # will be treated the same as `[[2, 1], [1, 2]]`
  return [array] if array.length <= 1 #[] because should return an array of arrays, if only one item long
  result = []
  
  array.each_with_index do |e, i|
    rest_of_array = array[0...i] + array[i+1..] # cuts e out of the array
    p "rest_of_array so far = #{rest_of_array}"
    permutations(rest_of_array).each do |perm|
      result << [e] + perm # << same as push, [e] lets us add it to an array
      p "result so far = #{result}"
    end
  end
  result
end
