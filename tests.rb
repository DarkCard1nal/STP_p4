# frozen_string_literal: true

require_relative 'verifier_ipv4'

puts('Start tests!')

# rubocop:disable Layout/SpaceInsideArrayLiteralBrackets, Layout/ArrayAlignment
arr = [	['192.168.1.1', true],
		['	1.205.200.0 ', true],
		['256.0.0.1', false],
		['10.4.5.-1', false],
		['10.1 4.6.1', false],
		['10.1	4.7.1', false],
		['10.5.4.', false],
		['10.00.3.1', false],
		['1', false],
		[nil, false],
		['0.0.0', false],
		['1.8v6.1.1', false]]
# rubocop:enable Layout/SpaceInsideArrayLiteralBrackets, Layout/ArrayAlignment

completed = 0
arr.each do |test|
	p test[0]
	result = VerifierIPv4.verify(test[0])
	p result
	puts("Result: #{result == test[1]}")
	completed += result == test[1] ? 1 : 0
end

puts("\nPassed #{completed}/#{arr.size} tests!!")
puts('Stop tests!')
