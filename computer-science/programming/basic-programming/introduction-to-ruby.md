# Introduction to Ruby


## What is Ruby?

## Installing Ruby 2.1.1

## irb

### General
Modern programming languages allow you to add things to arrays unlike older programming languages which would allocate memory automatically.  
Because of Big O, arrays are good for pushing and popping (stack and queues) but not for searching because you need to remove everything in front or behind to find something specific.  
Range class saves memory rather than taking up memory for all numbers in an array.  
Parallel assignment if frowned upon because it’s not intuitive.  
EOS = heredoc  
Backus-Naur-Form (BNF) is used to translate into symbols  
RFC standards - actual specs  
The value of a symbol is the symbol, it’s not representing anything else like a variable.  
Ruby garbage collector called ‘mark and sweep’ - primitive  
Ruby is weakly typed which means you don’t have to specify a data type when creating something.
ERD diagram to describe databases.   

### Symbols
Symbols are global  
Constants allow you to change values. You can change the string to another version of the string, but you can’t change that string to nil.  
Constants in Ruby are symbols.  
Constants hold a value, symbols don’t hold values. Think of symbols as tokens.  

### RegEX
Carrots inside a bracket looks for things that are not a match, a carrot outside a bracket means match at the beginning.

### Booleans
Order of operation is different between ‘and’ and ‘&&’.
== checks if characters are the same.  

### Methods
Guards aka a short circuit take methods on a different path and allow for explicit returns. For example, return nil unless i.is_a? . 
self.class.my_method calls a class method on the class itself.   
array.map(&:method) '&' just means to call this method. 
array.inject(0, :+) Ruby knows to add the array items.  
Enumerable module allows duck typing which means the method will work on anything that looks like what the method is expecting.  For example, enumerable methods look for something array/hashish.  
You include mixins and require the standard library.  

### Tests
Don’t use more than one assert per test. 
skip allows you to skip a test in mini test.  
Acceptance testing = integration testing in Rails.  

### IO
You must close a file when you open it, if not, the file can’t be opened anywhere else

### Data Types - Linked Lists
Characters are secretly integers, and integers are secretly bits.   
More primitive than an array is a linked list.  
Each item in the list is responsible for knowing what the next item is.  
The linked list object only knows about the first item.

### Exceptions
Bubble up until something catches them.  

### Git
'git add -p' shows changes





