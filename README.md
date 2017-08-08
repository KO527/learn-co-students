<<<<<<< HEAD
# Parrot

## Objectives
1. Define a method that accepts arguments.
2. Create a default argument.
3. Practice returning a value.

##Instructions

In this lab you'll be defining a method called `#parrot`. 

The `#parrot` method should accept an argument of a string and both `#puts` out that string *and* return the string at the end of the method. 

The `#parrot` method should have a default argument of `"Squawk!"`. 

**Note:** *This lab is explicitly testing your ability to control the return value of a method, not just what it does, but what it returns. Remember, return values are important. Ask yourself? what is the return value of `#puts`?*

## Resources
* [Skorks Blog - Arguments With Default Value](http://www.skorks.com/2009/08/method-arguments-in-ruby/)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/parrot-ruby' title='Parrot'>Parrot</a> on Learn.co and start learning to code for free.</p>
=======
<<<<<<< HEAD

# Square Array

## Objectives
1. Practice iterating over an array using the `.each` method.
2. Practice operating on each element of an array.

## Instructions

You will build a method, `square_array`, that squares each element in an array of numbers and returns a new array of these squared numbers. Use an iterator and implement your own logic, *don't* use any built-in array methods other than `.each` (e.g. `.collect`, `.inject`).

A couple of questions that you can ask yourself are: 

* What is the return value of calling `.each` on an array?
* How can I operate on each element of an array and also collect or store those elements?
* How can I square a number? **Hint:** There is more than one way to do it! Google Ruby's exponent operator or refer back to the earlier lesson on simple math.

## Advanced

Once you have the tests passing, see if you can implement this with a higher level iterator such as `.collect`.

## Expectation Examples

```ruby
numbers = [1,2,3]

square_array(numbers)
# => [1,4,9])

new_numbers = [9,10,16,25]

square_array(new_numbers)
# => [81,100,256,625]
```

## Resources

* [Ruby Docs](http://www.ruby-doc.org/core-2.1.2/) - [Each Method](http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-each)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/square_array' title='Square Array'>Square Array</a> on Learn.co and start learning to code for free.</p>
=======
<<<<<<< HEAD
# Array Lab: Create, Retrieve, Update, Delete

## Overview

In this lab, you will create arrays, add data to arrays, remove data from arrays and retrieve data from arrays.

## Objectives

1. Create a new array that contains data as well as a new array that is empty.
2. Add an element to the end of an array.
3. Add an element to the front of an array.
4. Remove an element from the front of an array.
5. Remove an element from the end of an array.
6. Retrieve data from a specific array index.

## Instructions

In this lab, we will be coding the solutions for each of the above tasks in the body of a method. In `lib/array_crud.rb` we've defined a series of methods for you, each of which is responsible for one of the tasks above. Your job is to write the code in the body of each method to get the test passing.

Let's go through the first challenge together.

### `#create_an_empty_array`

Let's run our test suite to get started. Run the tests one at a time with the `learn --fail-fast` command in your terminal.

If we do so, we'll see our first failure:

![](http://readme-pics.s3.amazonaws.com/Screen%20Shot%202015-10-26%20at%202.05.07%20PM.png)

Our test is telling us that we are expected to code the content of our `#create_an_empty_array` method such that a new, empty array is created and returned. Our test `expected` an empty array, `[]`, but got `nil`.

Open up `lib/array_crud.rb` and check out the `#create_an_empty_array` method. It's empty! Let's write the code that will get the test passing.

We'll use the literal constructor to make a new array with nothing in it:

```ruby
def create_an_empty_array
  []
end
```

Run the test suite again and we should be passing that first test.

### `#create_an_array`

This method should use the literal constructor to create a new array, just like we did above. This time, however, create an array that contains four elements. The four elements can be any elements of your choosing, as long as there are only four of them.

### `#add_element_to_end_of_array`

This method takes in two arguments, an array and the element we want to add to it. Use the `<<` (shovel) method or the `#push` method to add that element to the end of the new array.

### `#add_element_to_start_of_array`

This method takes in two arguments, an array and the element we want to add to it. Use the `#unshift` method to add that element to the start of that array.

### `#remove_element_from_end_of_array`

This method takes in one argument, the array on which we want to operate. Use the `#pop` method to remove the last item from the array.

### `#remove_element_from_start_of_array`

This method takes in one argument, the array on which we want to operate. Use the `#shift` method to remove the first item from the array.

### `#retrieve_element_from_index`

This method takes in two arguments, an array and the index number whose element we want to retrieve. Use the `[]`, bracket method, to return the element stored at that index number of the given array.

### `#retrieve_first_element_from_array`

This method takes in one argument, the array from which we want to retrieve an element. Use `[]` notation to return the value stored at the first index of the array. Remember that arrays are zero-indexed. This means that the first index number is `0` and it counts up from there. So, the first element of an array is stored at index `0`.

### `#retrieve_last_element_from_array`

This method takes in one argument, the array from which we want to retrieve an element. There are a number of ways to do this, but we recommend using the `[]` method with the following hint:

The last element of an array is considered to be stored at an index of `-1`.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/array-CRUD-lab' title='Array Lab: Create, Retrieve, Update, Delete'>Array Lab: Create, Retrieve, Update, Delete</a> on Learn.co and start learning to code for free.</p>
=======
# Method Arguments Lab

## Objectives

1. Define a method that takes in an argument and uses that argument in the method body. 
2. Define a method that takes in two arguments and uses both arguments in the method body. 

## Instructions

You'll be coding your methods in `lib/introduction.rb`. 

### The `#introduction` Method

Run the test suite to get started. To do that, run `learn` or `learn test` in your terminal. Let's take a look at the first error:

```bash
Failures:

  1) #introduction takes in an argument of a name and puts out a phrase with that name using string interpolation
     Failure/Error: expect{introduction("Josh")}.to output("Hi, my name is Josh.\n").to_stdout
     NoMethodError:
       undefined method `introduction' for #<RSpec::ExampleGroups::Introduction:0x007fdbc499a938>
     # ./spec/introduction_spec.rb:5:in `block (3 levels) in <top (required)>'
     # ./spec/introduction_spec.rb:5:in `block (2 levels) in <top (required)>'
```

Wow, that's a lot of information. The important part for us though is the line that tells us *what kind of error* we are experiencing:

```bash
NoMethodError:
       undefined method `introduction`
```

Looks like our test is expecting to test a method called `#introduction`. Let's define that method in `lib/introduction.rb`.

```ruby
# lib/introduction.rb

def introduction
end
```

Now we'll run our test suite again. You should see the following error:

```bash
Failures:

  1) #introduction takes in an argument of a name and puts out a phrase with that name using string interpolation
     Failure/Error: expect{introduction("Josh")}.to output("Hi, my name is Josh.\n").to_stdout
     ArgumentError:
       wrong number of arguments (1 for 0)
     # ./lib/introduction.rb:9:in `introduction'
     # ./spec/introduction_spec.rb:5:in `block (3 levels) in <top (required)>'
     # ./spec/introduction_spec.rb:5:in `block (2 levels) in <top (required)>'


```

Once again the important part of this error message is the part where the type of error is described:

```bash
ArgumentError:
       wrong number of arguments (1 for 0)
```

Now we have an ArgumentError. The test is trying to call our `#introduction` method with an argument (notice it says `1`) but we haven't defined our method to take in any arguments, the `for 0` part of the error message.

Let's fix that now:

```ruby
# lib/introduction.rb

def introduction(name)
end
```

Run the test again and you'll see the following:

```bash
Failures:

  1) #introduction takes in an argument of a name and puts out a phrase with that name using string interpolation
     Failure/Error: expect{introduction("Josh")}.to output("Hi, my name is Josh.\n").to_stdout
       expected block to output "Hi, my name is Josh.\n" to stdout, but output nothing
       Diff:
       @@ -1,2 +1 @@
       -Hi, my name is Josh.
       
     # ./spec/introduction_spec.rb:5:in `block (2 levels) in <top (required)>'

```

Now the important part of our error message is here:

```bash
expected block to output "Hi, my name is Josh.\n" to stdout, but output nothing
```

Our test is expecting our method to `puts` out the exact phrase, using the value of the `name` argument that the method is called with. 

Let's fix that:

```ruby
# lib/introduction.rb

def introduction(name)
  puts "Hi, my name is #{name}."
end
```

Run the test again and we should be passing the first of our two tests. Use the test output and the procedure we just followed to get the second test passing. 


### The `#introduction_with_language` Method

Define a method, `#introduction_with_language` that takes in two arguments, `name` and `language` and outputs the phrase: `"Hi, my name is #{name} and I am learning to program in #{language}."

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/method-arguments-lab' title='Method Arguments Lab'>Method Arguments Lab</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='https://learn.co/lessons/method-arguments-lab'>Methods and Arguments Lab</a> on Learn.co and start learning to code for free.</p>
>>>>>>> a251d5012c32ae9a4decdc9f665343f0acf316dd
>>>>>>> fde361997546ac94dad0af05cf952d63b8222459
>>>>>>> 4ed13e7e536ee993dae4ad6129fbe02ed5f66203
