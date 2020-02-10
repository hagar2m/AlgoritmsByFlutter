import './algorithmModel.dart';

/*
  complete tree: every node can't contain more than 2 child
  and it indexed from left to right
    to get parent : do this (i/2) -1
    to get children:
      - left child: 2*i +1
      - right child: 2*i +2
    
    Binary Heap data structure is look like  complete tree 
    but every node is smaller than it's children. it called (Min Heap)
    if every node is large than it's children. it called (Max Heap)
    here using Max heap

    ex:
    Input data: [4, 10, 3, 5, 1]
        4
      /  \
     10   3
    /  \
   5    1

    -a cheak if root(4) > it's children (10, 3) => false , so 4 replaced with 10

        10
      /   \
     4     3
    /  \
   5    1

    -b found 5 > 4  => false , so 4 replaced with 5

        10
      /   \
     5     3
    /  \
   4    1
   
   [ 10, 5, 3, 4, 1]

   -c remove root(10) - make last elemet(1) as a root => [ 1, 5, 3, 4, 10]

        1
      /   \
     5     3
    /  
   4   

  -a cheak if root(1) > it's children (5, 3) => false , so 1 replaced with 5

        5
      /   \
     1     3
    /  
   4   

  -b repeat - found 4 > 1  => false , so 4 replaced with 1

        5
      /   \
     4     3
    /  
   1  

  -c remove root(5) - make last elemet(1) as a root => [ 1, 4, 3, 5, 10]
        1
      /   \
     4     3

  -a cheak if root(1) > it's children (4, 3) => false , so 1 replaced with 4
        4
      /   \
     1     3

  -c remove root(4) - make last elemet(3) as a root => [ 3, 1, 4, 5, 10]
        3
      /  
    1  

  -c remove root(3) - make last elemet(1) as a root => [ 1,3, 4, 5, 10]
  
  */

class HeapSort extends AlgorithmModel {
  String name;
  SortAlgorithms type;
  String timeComplexity;

  HeapSort({
    this.name: 'Heap Sort',
    this.type: SortAlgorithms.heap,
    this.timeComplexity:
        'O(nLogn)' // length of tree  = log n & evry item I make heapify so => n Log n
    })
    : super(name: name, type: type, timeComplexity: timeComplexity);

  @override
  String sort(List arr) {
    int n = arr.length;
    int parent = (n / 2 - 1).round();
    for (int i = parent; i >= 0; i--) {
      heapify(arr, n, i); // creates a Max heap
    }
    for (int i = n - 1; i >= 0; i--) {
      int temp = arr[0]; // swap first and last node
      arr[0] = arr[i];
      arr[i] = temp;
      // creates max heapify on the reduced heap
      heapify(arr, i, 0); //
    }
    return arr.toString();
  }

  void heapify(List arr, int n, int i) {
    int largest = i; // Initialize largest as root
    int l = 2 * i + 1; // left child = 2*i + 1
    int r = 2 * i + 2; // right child = 2*i + 2

    // If left child is larger than root
    if (l < n && arr[l] > arr[largest]) largest = l;

    // If right child is larger than largest so far
    if (r < n && arr[r] > arr[largest]) largest = r;

    // If largest is not root
    if (largest != i) {
      int swap = arr[i];
      arr[i] = arr[largest];
      arr[largest] = swap;
      // Recursively heapify the affected sub-tree
      heapify(arr, n, largest);
    }
  }
}
