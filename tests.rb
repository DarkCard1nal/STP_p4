# frozen_string_literal: true

require_relative 'verifier_ipv4'

puts('Start tests!')

# rubocop:disable Layout/ArrayAlignment, Layout/SpaceInsideArrayLiteralBrackets
arr = [,]
# rubocop:enable Layout/ArrayAlignment, Layout/SpaceInsideArrayLiteralBrackets

completed = 0
arr.each do |test|
	p test[0]
	result = (test[0])
	p result
	puts("Result: #{result == test[1]}")
	completed += result == test[1] ? 1 : 0
end

puts("\nPassed #{completed}/#{arr.length} tests!!")
puts('Stop tests!')
