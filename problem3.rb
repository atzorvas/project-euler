'''
Problem 3: Largest prime factor

The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
'''

def prime? n
  (2...n).each { |x| return false if n % x == 0 }
  true
end

def biggest_prime_divisor(n)
  return (1..Math.sqrt(n)).to_a.reverse.detect{|x| n % x == 0 && prime?(x) }
end

puts "Answer: #{biggest_prime_divisor(600851475143)}"