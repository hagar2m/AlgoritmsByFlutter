import './algorithmModel.dart';

class BubbleSort extends AlgorithmModel {
  String name;
  SortAlgorithms type;
  String timeComplexity;
  bool sortingInPlace;

  BubbleSort({
    this.name: 'Bubble Sort', 
    this.type: SortAlgorithms.bubble, 
    this.timeComplexity: 'O(n*2)',
    this.sortingInPlace: true
  }): super(name: name, type: type, timeComplexity: timeComplexity, sortingInPlace: sortingInPlace);

  @override
  String sort(List arr) {
    int n = arr.length;

    for (var i = 0; i < n - 1; i++) {
      bool swap = false;
      for (var j = 0; j < n - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
          swap = true;
        }
      }

      if (swap == false) break;
    }
    return arr.toString();
  }
}
