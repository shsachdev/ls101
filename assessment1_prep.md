# Example
```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
```

On line 3, the local variable ```a``` is initialized with a value of an array of integers.

On line 4, the local variable ```b```is initialized with the same object as ```a```; it points to the same object in memory, the array of integers.

On line 5, the local variable ```c```is initialized to the return value of invoking the uniq method on ```a```. The return value of invoking the uniq method on ```a``` is an array containing the unique elements of the object that ```a``` and ```b``` point to. So, ```c``` points to a different object than both ```a``` and ```b```.

# Example
```ruby
def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
p test(a)
p a
```

On line 16, we define a method named test that takes in one parameter ```b```.

On line 20, we initialize the local variable ```a``` with a value of an array of strings.

On line 21, we invoke the ```test``` method and pass in the variable ```a```.

On line 16, the variable ```b```, local to the ```test```method, is set to a value of the argument passed in, which is variable ```a```.

On line 17, we invoke the map method on variable b and pass in a single-line block as an argument with a single parameter ```letter```. The map methods iterates through the variable ```b``` and evaluates to true (i.e is truthy) for each iteration, and thus this method performs transformation by taking the return value of the block each iteration and placing that result in a new array collection.

In summary, the output of line 21 is the return value of ```test(a)```, which is the return value of the ```map```method called, and is a new array collection of the form:

```ruby
["I like the letter: a", "I like the letter: b", "I like the letter: c"]
```

The `array` object which `a` was initialized with has not been mutated or changed. Further, what one decides to name the `test` method's parameter (in this case `b`) does not matter in this regard.
