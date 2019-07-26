
#Q2

```puts size``` raises an exception because the variable ```size``` is local to block alongside the ```loop``` method invocation from lines 6 - 10; it is initialized in an inner-scope (and set to the value of the string ```"small```) and is not accessible within the outer scope created by the block alongside the ```times``` method invocation from lines 6-15.

On the other hand, ```puts color``` and ```puts shape``` do not raise any errors. This is because the variable ```color```  is initialized outside of the block alongside the ```times```  method invokation, and so by scoping rules, a local variable initialized outside of a block is accessible inside the block. Here, invoking ```puts``` on ```color``` will output the string ```"red"````.

The variable ```shape``` is initialized local to the ```times``` method, and since we are invoking the ```puts``` method on the variable ```shape``` within the block created alongside the ```times``` method, the variable ```shape```` is accessible and prints the string ```"circle"````.



#Q5


```puts a``` on line 9 outputs ```blue``` because ```a``` is originally assigned to the string ```"red"```, but then re-assigned to the variable ```b```, which points to the value ```"blue"```. So, ```a``` points to ```"blue"``` as well.

On line 6, when we re-assign the variable ```b``` to the string ```"yellow"```, we create a new object and do not modify the original object that ```a``` is pointing to. So at this stage, since ```a``` still happens to be pointing to ```"blue"``` and ```b``` is pointing to ```"yellow"```, on line 9 we get ```"blue"``` and on line 10 we get ```"yellow"```.

On line 11, we get ```"blue"``` because on line 7, we re-assign the variable ```c``` to whatever ```a``` is pointing to, which happens to be ```"blue"```. Hence, ``puts `c``` outputs ```"blue"``` on line 11.
