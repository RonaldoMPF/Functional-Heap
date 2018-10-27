# Functional-Heap
## Heap Data Structure in Functional Paradigm - For Functional Programming Course 2018.1

### Description: 
Implementation in Haskell of a Heap data structure based on the [Leftist Tree Model](http://www.dgp.toronto.edu/people/JamesStewar/378notes/10leftist/). The heap can change from MinHeap to Maxheap according to the **Haskell Ordering** attribute passed as parameter in its creation where:

* LT creates a MinHeap
* GT creates a MaxHeap

The elements inserted in the Heap must be of the *TypeClass* **Ord** (Ordering), which can be made a comparison between its elements, that will be used to create the structure of the Heap.

Based on the implementation contained in the book: [Algorithms: A Functional Programming Approach](https://www.amazon.com/Algorithms-Functional-Programming-Approach-International/dp/0201596040).

#### API description:

```haskell
  emptyHeap :: Ordering -> Heap a
```
Definition for an Empty Heap, receives an Ordering as a parameter indicating the type of the Heap.

```haskell 
 heapEmpty :: Heap a -> Bool
```
Test for an empty Heap, receive a Heap as parameter, and return True if it is empty, otherwise False.

```haskell
  findHeap :: (Ord a) => Heap a -> a
```
It looks for an element in the Heap, returning an error if the element is not present, the element to be searched is passed as parameter, and if it is found, it is returned.

```haskell
  rank :: (Ord a) => Heap a -> Int
 ```
Returns the **rank** of a last node as a parameter, which is an integer that represents the smallest number of edges of a node up to a leaf node, is an important value for maintenance of the Leftist Tree invariant. The rank of an empty node is zero.

```haskell
 policy :: (Ord a) => Heap a -> Ordering
 ```
 Returns an Ordering corresponding to the Heap type passed as parameter, **LT** for MinHeap, **GT** for MaxHeap.
```haskell
  makeHP :: (Ord a) => a -> Heap a -> Heap a -> Heap a
 ```
 Returns a new tree by swapping the children of a node passed as parameter if the rank of the child on the right is greater than the rank of the child on the left, thus preserving the invariant of the Leftist Tree.

```haskell
  merge :: (Ord a) => Heap a -> Heap a -> Heap a
 ```
Returns a new Heap by combining two other Heaps passed as parameter and keeping the Leftist Tree invariant, the Heaps to be combined must be of the same type, or an error will be returned, runs at time **O(log n)**.

```haskell
  insHeap :: (Ord a) => a -> Heap a -> Heap a
```
Returns a new Heap by inserting the passed element as a parameter and keeping the Leftist Tree invariant as well as the Heap invariant.

```haskell
   delHeap :: (Ord a) => Heap a -> Heap a
 ```
Returns a new Heap by removing the element passed as a parameter if it is present, keeping the Leftist Tree invariant and Heap invariant, if the Heap is empty an error is returned.

```haskell
    buildHeapAux :: (Ord a) => [a] -> Heap a -> Heap a
 ```
Returns a Heap constructed from elements in a list passed as a parameter, keeping Leftist Tree invariant and Heap invariant, runs at time **O(n log n)**.

```haskell
   heapSort :: (Ord a) => [a] -> Ordering -> [a]
 ```
Returns a list containing the same elements of the list passed as a parameter, they are sorted by the attribute of the **Ordering** type passed as a parameter, where LT is ascending ordering and GT is descending ordering. The ordering is done internally using a Heap and the Heapsort algorithm, runs at time **O(n log n)**.

#### Table of Contents:

1. **Installation**
1. **Usage**
1. **Credits**

### 1. Installation

Just clone the repository.

### 2. Usage

Load Heap.hs in GHCI or modify Main to run on GHC.

### 3. Credits
Ronaldo Medeiros @RonaldoMPF
Breno Souza @BrenoSouza
