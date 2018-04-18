# Sorting
A quick intro to sorting algorithms

---

### Why is sorting important?

- Talk it out with your peeps! (2 min).

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

---?image=assets/bubble-sort.gif

---

### Quick Sort!
An efficient sorting algorithm. It's a divide and conquer algorithm.  Quicksort first divides a large array into two smaller sub-arrays; the low elements and the high elements. 
Quicksort can then **recursively** sort the sub-arrays.

![Press Down Key](assets/down-arrow.png)

+++?code=src/quick_sort.rb&lang-ruby

@[1] (Enter into the already built-in array class)
@[3] (We'll define our method as quicksort and give the option of passing a **proc**. A block of code that can define part of the inner logic of our algorithm)
@[4] (If no proc is passed we can assign the sorting to be of ascending order with the combined comparison operator aka., the spaceship operator)
@[5] (Let's set up our base case.  When the size of the array being sorted is less than 2 elements than return.)
@[7] (We'll set up a the first element of our array as the pivot point.)
@[8-9] (All elements that are less than the pivot will be assigned to the variable left and viceversa. We leave out the first element and start from the second element and beyond since our first element is the pivot)
@[11] (We'll do recursive calls on each new left array and right array until the size is less than 2 for each individual array and finally join them all together and sorted at the end)

---?image=assets/quick-sort.gif

---?image=assets/bob-qiq.gif

---

### Merge Sort!
Merge sort is an efficient, general-purpose, comparison-based algorithm.  Merge sort is a divide and conquer algorithm as well where you:
1.Divide the unsorted list into n sublists, each containing 1 element (a list of 1 element is considered sorted).
2.Repeatedly merge sublists to produce new sorted sublists until there is only 1 sublist remaining. This will be the sorted list.

![Press Down Key](assets/down-arrow.png)

+++?code=src/merge_sort.rb&lang=ruby

@[1] (Enter into the already built-in array class)
@[2] (Let's define our method as merge_sort that takes in an optional **proc**. A block of code that can define part of the inner logic of our algorithm)
@[6] (If no proc is passed we can assign the sorting to be of ascending order with the combined comparison operator aka., the spaceship operator)
@[8] (We'll setup a base case to return.  This will be the recursive functionality part of the algorithm.  We want the count of the array to contain 1 element or 0 element in order to return).
@[10] (We want to set up a midpoint where we can disect our array and pass down as reference for our left and right sides)
@[11-12] (We'll be making lots of recursive calls now.  We'll continue taking elements from the left of the mipoint and placing them in an arrays called sorted_left and viceversa.)
@[14] (Finally we'll merge both sides.  This will call our merge method. The merge method will act iteratively and not recursively)
@[19-37] (This is the merge method)
@[22-31] (We have to constantly loop **until** the left or the right sides are empty)
@[23-29] (We'll do comparisons and see which element from both sides is smaller and shove that element into our separate array.)
@[33-36] (When we are done with both sides we still have two elements that have stayed behind.  We will need to add them into the array at the end and finally return the merged array.)

---?image=assets/merge_sort.gif

---?image=assets/simple1.jpg

---?image=assets/simple2.jpg

---?image=assets/simple3.jpg

---


