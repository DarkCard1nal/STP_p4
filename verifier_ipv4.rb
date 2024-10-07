# frozen_string_literal: true

# Static class that checks the canonical IPv4 address for correctness
class VerifierIPv4
	def initialize
		raise NotImplementedError
	end

	# Static method checks octet for correctness, returns true
	def self.verify(address)
		return false if address.nil?

		address = address.strip.split('.')

		return false if address.size != 4

		address.map! do |octet|
			verify_octet(octet)
		end

		return true if address.count(true) == 4

		false
	end

	# Static method checks octet for correctness, returns true
	def self.verify_octet(octet)
		return false if octet.length > 3 || octet.empty?

		return false if octet =~ /\A0[0-9]+/ || octet =~ /\s/

		return false if octet !~ /\A\d+\z/

		num = octet.to_i

		num >= 0 && num < 256
	end

	private_class_method :verify_octet
end
