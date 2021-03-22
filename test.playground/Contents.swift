import UIKit

//var str = "Hello, playground"
////
////
////var testArr = [5,43,-4,46,6,34,4,6,8,9,90]
////
////
////func swap(firstIndex: Int, secIndex: Int, array: inout [Int]){
////    let temp = array[firstIndex]
////    array[firstIndex] = array[secIndex]
////    array[secIndex] = temp
////}
////
////
////swap(firstIndex: 0, secIndex: testArr.count - 1, array: &testArr)
////
////print(testArr)
//
//
//class MinHeap {
//    var heap: [Int]
//
//    init(array: [Int]) {
//        heap = array
//        buildHeap(array: array)
//    }
//
//    func buildHeap(array: [Int]) {
//
//        for idx in (0...(array.count-2)/2).reversed() {
//            //var parentIdx = idx
//            siftDown(currIndex: idx, endIdx: heap.count - 1)
//        }
//    }
//
//    func swap(firstIndex: Int, secIndex: Int) {
//        let temp = heap[firstIndex]
//        heap[firstIndex] = heap[secIndex]
//        heap[secIndex] = temp
//    }
//
//    func peek() -> Int {
//      let root = heap[0]
//      return root
//    }
//
//    func siftUp(currentIndex: Int) {
//        var currIdx = currentIndex
//        var parentIndex: Int = (currIdx - 1) / 2
//        while heap[currIdx] < heap[parentIndex] {
//            swap(firstIndex: currIdx, secIndex: parentIndex)
//            currIdx = parentIndex
//            parentIndex = (currIdx - 1) / 2
//        }
//    }
//
//    func insert(value: Int) {
//        heap.append(value)
//        siftUp(currentIndex: heap.count - 1)
//    }
//
//
//    func siftDown(currIndex: Int, endIdx: Int) {
//        var currentIndex = currIndex
//
//        var lowestChildIndex: Int = currentIndex * 2 + 1
//
//        if currentIndex * 2 + 1 < endIdx {
//            if currentIndex * 2 + 2 < endIdx {
//                lowestChildIndex = heap[currentIndex*2+1] < heap[currentIndex*2+2] ? currentIndex * 2 + 1 : currentIndex * 2 + 2
//            }
//        }else{
//            return
//        }
//
//        while heap[currentIndex] > heap[lowestChildIndex] {
//            //print("curr \(currentIndex), parent \(lowestChildIndex)")
//            swap(firstIndex: currentIndex, secIndex: lowestChildIndex)
//            currentIndex = lowestChildIndex
//
//            if currentIndex * 2 + 1 < endIdx {
//                lowestChildIndex = currentIndex * 2 + 1
//                if currentIndex * 2 + 2 < endIdx {
//                    lowestChildIndex = heap[currentIndex*2+1] < heap[currentIndex*2+2] ? currentIndex * 2 + 1 : currentIndex * 2 + 2
//                }
//            }else{
//                return
//            }
//        }
//    }
//}
//
//
//

//
//var h = MinHeap(array: testArr)
//
//print(h.heap)

//h.swap(firstIndex: 0, secIndex: h.heap.count - 1)
//
//print(h.heap)
//
//
//h.peek()
//
//h.siftUp(currentIndex: h.heap.count - 1)
//
//print(h.heap)
//
//
//h.insert(value: 25)
//
//print(h.heap)
//
//
//h.siftDown(currIndex: 0, endIdx: h.heap.count - 1)
//
//print(h.heap)


func heapSort(array: [Int]) -> [Int] {
    // make array into heap
    var sortedArr: [Int] = maxHeapBuilder(array: array)
        
        var end: Int = array.count - 1
        
        for idx in stride(from: (array.count - 1) / 2, to: 0, by: -1){
            siftDown(currIdx: idx, endIdx: end, array: &sortedArr)
            end -= 1
        }
        
        return sortedArr
  }
    
    func maxHeapBuilder(array: [Int]) -> [Int]{
        var heap = array
        
        for idx in stride(from: heap.count - 1, through: 0, by: -1 ) {
            siftDown(currIdx: idx , endIdx: heap.count - 1, array: &heap)
        }
        
        return heap
    }
    
    func siftDown(currIdx: Int, endIdx: Int, array: inout [Int]) {
        var currentIdx: Int = currIdx

        var nextIdx = currentIdx * 2 + 1
        while nextIdx <= endIdx{
            if nextIdx + 1 <= endIdx {
                nextIdx = array[nextIdx] > array[nextIdx + 1] ? nextIdx : nextIdx + 1
            }
            if array[currentIdx] < array[nextIdx] {
                    swap(idx1: currentIdx, idx2: nextIdx, array: &array)
            }else{
                return
            }
            currentIdx = nextIdx
            nextIdx = currentIdx * 2 + 1
        }
    }
    
    func swap(idx1: Int, idx2: Int, array: inout [Int]) {
        let temp: Int = array[idx1]
        array[idx1] = array[idx2]
        array[idx2] = temp
    }

var testArr = [5,43,-4,46,6,34,4,6,8,9,90]

//var sorted = heapSort(array: testArr)


//swap(idx1: 0, idx2: 1, array: &testArr)
print(testArr)

//siftDown(currIdx: 0, endIdx: testArr.count - 1, array: &testArr)
print(testArr)

let arr = maxHeapBuilder(array: testArr)

print(arr)

