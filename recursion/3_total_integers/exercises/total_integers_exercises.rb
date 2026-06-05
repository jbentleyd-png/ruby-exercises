def total_integers(array, count = 0)
  # Count the total number of integers inside of the given array
  # The array may be nested, and the integers inside these "inner" layers must also be counted
  #
  # Example: `total_integers([0, 1, [5]]) == 3`
  #
  # NOTE: you may notice that `Array#flatten` would make quick work of this,
  # but you should implement this method without using it. The tests will check
  # to make sure `#flatten` isn't used.
  array.each do |e|
    count += 1 if e.is_a?(Integer)
    count = total_integers(e, count) if e.is_a?(Array)
  end
  count
end
