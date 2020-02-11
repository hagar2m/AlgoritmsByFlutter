class AlgorithmModel {
  String name;
  SortAlgorithms type;
  String timeComplexity;
  bool sortingInPlace;

  AlgorithmModel({ this.name, this.type, this.timeComplexity, this.sortingInPlace });

  String sort(List arr ) { return ''; }
}

enum SortAlgorithms {
  insertion,
  bubble,
  selection, 
  heap
}