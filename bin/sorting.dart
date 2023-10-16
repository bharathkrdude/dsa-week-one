 class SortingAlgo {
  bubbleSorting(List<int>arr){
    int size = arr.length-1;
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size-i; j++) {
        if (arr[j] > arr[j+1]) {
          int temp = arr[j];
          arr[j] = arr[j+1];
          arr[j+1] = temp;
        }
      } 
    }
  }


  
}
class QuickSort {
  void swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

  int? partition(List<int> arr, int low, int high) {
    int pivot = arr[high];
    int i = low - 1;
    for (int j = low; j < high; j++) {
      if (arr[j] < pivot) {
        i++;
        swap(arr, i, j);
      }
    }
    swap(arr, i + 1, high);
    return i + 1;
  }

  void QuickSorting(List<int> arr, int low, int high) {
    if (low < high) {
      int? pi = partition(arr, low, high);
      QuickSorting(arr, low, pi! - 1);
      QuickSorting(arr, pi + 1, high);
    }
  }
}




void main(List<String> args) {
  QuickSort qsort = QuickSort();
  List<int> arr = [5, 6, 7, 1, 2, 9, 8, 10];
  print(arr);
  qsort.QuickSorting(arr, 0, arr.length - 1);
  print(arr);
}

// class QuickSort {
//  void swap(List<int> arr,int i,int j){
//   int temp = arr[i];
//   arr[i] = arr[j];
//   arr[j] = temp;
//  } 
//  int? partition(List<int> arr,int low,int high){
//   int? i = (low-1);
//   int? pivot = arr[high];
//   for (var j = low; j <= high-1;j++) {
//     if (arr[j]<pivot) {
//       i+1;
//       swap(arr, i, j);
//     }
//   }
//   swap(arr, i+1, high);
//   return i+1;
//  } 

// void QuickSorting(List<int> arr,int low,int high){
//   if (low < high) {
//     int? pi = partition(arr, low, high);
//     QuickSorting(arr, low, pi!-1);
//     QuickSorting(arr, pi+1, high);
//   }

// }
// }
// printArray(List<int> arr){
// for (int i = 0; i < arr.length; i++) {
//  print(arr[i]);
// }
//  print(arr);

// }
// void main(List<String> args) {
//   SortingAlgo sort = SortingAlgo();
//   QuickSort qsort = QuickSort();
//   List<int> arr = [5,6,7,1,2,9,8,10];
//   qsort.QuickSorting(arr, 0,arr.length-1);
//   printArray(arr);
// }