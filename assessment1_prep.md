# Example
```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
```

On line 3, the local variable ```a``` is initialized with a value of an array of integers.

On line 4, the local variable ```b```is initialized with the same object as ```a```; it points to the same object in memory, the array of integers.

On line 5, the local variable ```c```is initialized to the return value of invoking the uniq method on ```a```. The return value of invoking the uniq method on ```a``` is an array containing the unique elements of the object that ```a``` and ```b``` point to. So, ```c``` points to a different object than both ```a``` and ```b```.
