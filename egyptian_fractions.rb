# Rational number == any number that can represented as the result of the divison
# between two integers (1/3, 22/7)

# Unit Fraction == a rational number where the numerator is 1.

# egyptian fraction == sum of a series of distinct unit fractions.

# Write two methods:

# one that takes a Rational number as an argument, and returns
# an Array of the denominators that are part of an Egyptian Fraction representation
# of the number.

# and another that takes an Array of numbers in the same format,
# and calculates the resulting Rational number. You will need to use the Rational class
# provided by Ruby.

# examples:

# egyptian(Rational(2, 1))    # -> [1, 2, 3, 6] (because 1/1 + 1/2 + 1/3 + 1/6 == 2)

# egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]


def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end

    unit_denominator += 1
  end

  denominators
end

def unegyptian(denominators)
  denominators.inject(Rational(0)) do |accum, denominator|
    accum + Rational(1, denominator)
  end
end

# input = fraction, output = array

# Algorithm

# Consider a fraction t/b.

# The method is to find the biggest unit fraction we can and take it from
# t/b. With what is left, we repeat the process.
