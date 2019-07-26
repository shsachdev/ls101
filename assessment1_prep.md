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

# Example
```ruby
# now with map! instead of just map

def test(b)
  b.map! {|letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
p test(a)
p a
```

On line 43, we define a method named ```test``` that takes in one argument ```b```.

On line 51, we assign the local variable ```a``` to an array of strings.

On line 52, we invoke the ```puts``` method and pass in the ```test```method as an argument.

The ```test``` method is invoked and we pass in the variable ```a``` as an argument.

On line 47, the variable ```b```, local to the ```test```method, is set to a value of the argument passed in, which is ```a```.

On line 48, the ```map!``` method is invoked on the variable ```b```, and a block is passed in as an argument with a single parameter ```letter```. The ```map!```method iterates through ```b``` and each iteration evaluates to ```true```(i.e is truthy).

This method performs transformation by taking the return value of the block, which is the last line executed in the block. Since this is a destructive method, it mutates the caller, which in this case is ```b```, and the return value of each iteration is used to transform the original array ```b```.

So, line 52 outputs the return value of ```test(a)```, which is:

```ruby
["I like the letter: a", "I like the letter: b", "I like the letter: c"]
```

The major change in this question relative to the last one is the last line. This time, on line 53, we get an output of:

```ruby
["I like the letter: a", "I like the letter: b", "I like the letter: c"]
```

as opposed to:
```ruby
['a', 'b', 'c']
```

This is because the original object has been modified, since ```map!```is a destructive method.

# Example

```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```

On line 92, we assign the local variable ```my_arr``` to the return value of invoking the each method on the nested array:

```ruby
[[18, 7], [3, 12]]
```

Now, on line 92, we pass in a block as an argument into the each method, and the block has a single parameter ```arr```.

The block creates inner scope. Within the block, on line 93, we invoke the each method on the variable ```arr```.

We pass in another block into the each method, and the block takes in a single parameter ```num```.

Within this block, on line 94, the conditional ```num > 5``` evaluates to true for the integers 18 and 12, so those are printed.

The each method ignores the return value of the block and instead returns what was passed in.

```[3,12]``` 
