class AlgorithmModel {
  String name;
  SortAlgorithms type;
  String timeComplexity;
  AlgorithmModel({ this.name, this.type, this.timeComplexity });
}

enum SortAlgorithms {
  insertion,
  bubble,
}