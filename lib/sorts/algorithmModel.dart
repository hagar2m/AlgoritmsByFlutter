class AlgorithmModel {
  String name;
  SortAlgorithms type;
  String timeComplexity;
  AlgorithmModel({ this.name, this.type, this.timeComplexity });

  String sort(List arr ) {return ''; }
}

enum SortAlgorithms {
  insertion,
  bubble,
  selection, 
  heap
}