import './algorithmModel.dart';

class InsertionSort extends AlgorithmModel{
  String name;
  SortAlgorithms type;
  String timeComplexity;

  InsertionSort({ 
    this.name: 'Insertion Sort', 
    this.type: SortAlgorithms.insertion, 
    this.timeComplexity: 'O(n*2)' 
  }): super(name: name, type: type, timeComplexity: timeComplexity);

  @override
  String sort(List arr ) {
    for (var i = 0; i < arr.length; i++) {
      int key = arr[i];
      int j = i - 1 ;
      // print('key: $key');
      while (j >= 0 && arr[j] > key) {
        // print('${arr.toString()}');
        // print('swap1 between item: ${arr[j]} and ${arr[j+1]}');

        arr[j+1] = arr[j];
        j--;
        // print('${arr.toString()}');
      }
      if(j+1 != i) {
        arr[j+1] = key;
      // print('swap at index: ${j+1} - after swap2: ${arr.toString()}');
      }
    }
    return arr.toString(); 
  }
}