List<int> insertionSort(List<int> arr) {
  for (var i = 1; i < arr.length; i++) {
    var key = arr[i];
    var j = i - 1;
    
    // Move elements of arr[0..i-1], that are
    // greater than key, to one position ahead
    // of their current position
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
  return arr;
}

void main() {
  var arr = [64, 34, 25, 12, 22, 11, 90];
 print(insertionSort(arr));
}


void merde(List arr){


}