import Test.HUnit
import qualified Heap as Hp
a = Hp.emptyHeap
b = Hp.insHeap 20 Hp.emptyHeap
c = Hp.insHeap 5 (Hp.insHeap 10 b)

test1 = TestCase (assertEqual "Test Empty Heap" (Hp.heapEmpty a) True)
test2 = TestCase (assertEqual "Test heapEmpty" (Hp.heapEmpty b) False)
test3 = TestCase (assertEqual "Test root min property" (Hp.findHeap c) 5)

tests = TestList [TestLabel "Test Empty Heap" test1, TestLabel "Test heapEmpty" test2, TestLabel "Test root min property" test3]
