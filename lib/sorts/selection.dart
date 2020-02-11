import './algorithmModel.dart';

class SelectionSort extends AlgorithmModel {
  String name;
  SortAlgorithms type;
  String timeComplexity;
  bool sortingInPlace;

  SelectionSort({ 
    this.name: 'Selection Sort', 
    this.type: SortAlgorithms.selection, 
    this.timeComplexity: 'O(n*2)',
    this.sortingInPlace: true //  it does not require extra space.
  }): super(name: name, type: type, timeComplexity: timeComplexity, sortingInPlace: sortingInPlace);

  @override
  String sort(List arr) {
    int n = arr.length;
    for (int i = 0; i < n - 1; i++) {
      int minIndex = i;

      for (int j = i + 1; j < n; j++) {
        if (arr[minIndex] > arr[j]) {
          minIndex = j;
        }
      }

      if (minIndex != i) {
        int temp = arr[i];
        arr[i] = arr[minIndex];
        arr[minIndex] = temp;
      }
    }
    return arr.toString();
  }
}
