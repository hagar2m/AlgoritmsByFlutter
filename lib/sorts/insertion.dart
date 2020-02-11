import './algorithmModel.dart';
/*
it depended on  sorted array and unsorted array
it takes element from unsorted array and put it in correct position in sorted array
- in the start it Considered element[0] as a sorted array

insertion sort is prfere in Linked list because problem of shiftting.

Example:
[ 12, 11, 13, 5, 6]

Let us loop for i = 1 (second element of the array) to (last element of the array)

i = 1. Since 11 is smaller than 12, move 12 and insert 11 before 12
11, 12, 13, 5, 6

i = 2. 13 will remain at its position (as all elements in A[0..I-1] are smaller than 13)
11, 12, 13, 5, 6

i = 3. 5 will move to the beginning 

i = 4. 6 will move to position after 5
5, 6, 11, 12, 13
*/
class InsertionSort extends AlgorithmModel{
  String name;
  SortAlgorithms type;
  String timeComplexity;
  bool sortingInPlace;

  InsertionSort({ 
    this.name: 'Insertion Sort', 
    this.type: SortAlgorithms.insertion, 
    this.sortingInPlace: true,
    this.timeComplexity: 'O(n*2)' // Measure in worst case.
    /*
      because at every element it compare item with every element before it , 
      until find this element is large than compared item
      worst case if compare with all element before, this will occure in (reversed list)
    */
  }): super(name: name, type: type, timeComplexity: timeComplexity, sortingInPlace: sortingInPlace);

  @override
  String sort(List arr ) {
    for (var i = 0; i < arr.length; i++) {
      int key = arr[i];
      int j = i - 1 ;

      /* Move sorted elements of arr[0..j], that are greater than key, 
      to one position ahead of their current position 
      */
      while (j >= 0 && arr[j] > key) {
        arr[j+1] = arr[j];
        j--;
      }
      if(j+1 != i) {
        arr[j+1] = key;
      }
    }
    return arr.toString(); 
  }
}