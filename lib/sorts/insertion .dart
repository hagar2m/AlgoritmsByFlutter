import 'sortingAlgorithm.dart';

class InsertionSort extends SortingAlgorithm{

  static String sort(List arr ) {
    for (var i = 0; i < arr.length; i++) {
      int key = arr[i];
      int j = i - 1 ;
      
      while (j >= 0 && arr[j] > key) {
        arr[j+1] = arr[j];
        j--;
      }
      arr[j+1] = key;
    }
    return arr.toString(); 
  }
}