# STP_p4
_Created for the course "Stack of programming technologies" V. N. Karazin Kharkiv National University_

Ruby 3.3.5 "Verifier IPv4".
___

The main executable file `program.rb`.

A program for verifying IPv4 addresses. Checks for:
- leading zeros
- space characters
- octet out of range `(0..255)`
- number of octets = `4`

The `verify` method in the `VerifierIPv4` class (`verifier_ipv4.rb`) will return `true` if the address is canonical (passes all checks).

The program supports input by using command line arguments.

# Examples

```ruby
> ruby program.rb
"Verifier IPv4" by Shkilnyi V. CS31
Enter the IPv4 address:
> 
The IPv4 address is not verified, is not canonical, or contains errors.

> ruby program.rb
"Verifier IPv4" by Shkilnyi V. CS31
Enter the IPv4 address:
> 1
The IPv4 address is not verified, is not canonical, or contains errors.

> ruby program.rb
"Verifier IPv4" by Shkilnyi V. CS31
Enter the IPv4 address:
>         0.0.0.0   
IPv4 address is verified.

> ruby program.rb 1 
The IPv4 address is not verified, is not canonical, or contains errors.

> ruby program.rb 0.0.0.0
IPv4 address is verified.

> ruby program.rb 0.0.0.0.0
The IPv4 address is not verified, is not canonical, or contains errors.

> ruby program.rb          
"Verifier IPv4" by Shkilnyi V. CS31
Enter the IPv4 address:
> 192.168.1.1
IPv4 address is verified.

> ruby program.rb 192.1d8.1.1
The IPv4 address is not verified, is not canonical, or contains errors.

> ruby program.rb 192.018.1.1
The IPv4 address is not verified, is not canonical, or contains errors.
```

# More tests and examples in tests.rb (passed tests 12/12)
