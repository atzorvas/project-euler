'''
Problem 2: Even Fibonacci numbers

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
  1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
'''


def fibonacci_even_sum(num)
  (1..Float::INFINITY).
    lazy.
    with_object([0,1]).
    map { |x, last| last[1] = last[0] + (last[0] = last[1]) }.
    select { |x| x.even? }.
    take_while { |x| x < num }.
    reduce(&:+)
end

puts "Answer #{fibonacci_even_sum(4_000_000)}"
