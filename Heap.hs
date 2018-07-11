module Heap (Heap, emptyHeap, heapEmpty, findHeap, insHeap, delHeap) where

  data Heap a = EmptyHP | HP a Int (Heap a) (Heap a) deriving Show

  emptyHeap :: (Ord a) => Heap a
  emptyHeap = EmptyHP

  heapEmpty :: (Ord a) => Heap a -> Bool
  heapEmpty EmptyHP = True
  heapEmpty _ = False

  findHeap :: (Ord a) => Heap a -> a
  findHeap EmptyHP = error "findHeap: empty Heap"
  findHeap (HP x a b) = x

  insHeap :: (Ord a) => a -> Heap a -> Heap a

  delHeap :: (Ord a) => Heap a -> Heap a
