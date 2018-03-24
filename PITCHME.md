# Sorting
An quick intro to sorting algorithms and why they are useful

---

### Why is sorting important?

- In CS:
- IRL:

---

### Bubble sort!

Here's an implementation on bubble sort. Bubble sort is one of the most
inefficient sorting algorithms because of how simple it is.

![Press Down Key](assets/down-arrow.png)

+++?code=src/bubble_sort_classes.rb&lang=ruby

@[1] (Enter into the already built-in array class)
@[2] (Let's define our method -> bubble_sort)
@[4] (We'll be using a flag to let us know if the array is sorted or not)
@[5-16] (With an Until loop, we'll iterate **until** sorted is true)
@[8-15] (We'll use an enumerator to work the inner logic)
@[9] (Let's skip the last iteration and go to the next one if we are at the end of the array)
@[10] (We'll create a variable with our iterator + 1. This will stand for the elemen that's located immediately to the right of our iterator and will represent the righ telement.)
@[11-13] (We'll do a swap if our left element is greater than the right element and we'll raise a flag so it can let us know that the array is not sorted and we'll start the process once more.)
@[18] (We'll return the sorted array so we can do something with it)

---

---?image=assets/bubble-sort.gif

### Quick Sort!



