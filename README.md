# Debug::Transput

This is a simple module inspired by a request from `codesections` to have a version of `say` that would also return its value.
Normally, `say` returns `True`, but especially when debugging, it can be nice to replace 

```
method foo {
   say [long expression];
   return [long expression];
}
# or when there are side effects
method foo {
   my $temp = [long expression];
   say $temp;
   return $temp;
}
```

with something much simpler:

```
method yay {
   transay [long expression]
}
```

This will take the value of `[long expression]`, `say` it, and then return the value (which is itself returned by the method).

This can work nicely if you have a math equation and you want to check the value at just a certain step:

```
use Debug::Transput;
my $a = 1;
my $b = 2;
my $c = transay($a) + transay($b);
say $c;

# 1  - from transay
# 2  - from the other transay
# 3  - from normal say
```

There are three variants that mirror the normal three operations for output:

  * **transay**  
  Outputs in human-readable form (`.gist`) and includes a newline.
  * **transprint**  
  Outputs generic form (`.Str`) and does not add a newline.
  * **transput**  
  Outputs in generic form (`.Str`) and includes a newline.
  
