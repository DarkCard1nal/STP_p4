# frozen_string_literal: true

require_relative 'constants'
require_relative 'verifier_ipv4'

if ARGV.empty?
	puts(Constants::AUTHOR)
	puts(Constants::ENTER_INPUT)
	input = gets.chomp
else
	input = ARGV[0]
end

if VerifierIPv4.verify(input)
	puts(Constants::RESULT)
else
	puts(Constants::INVALID_INPUT)
end
