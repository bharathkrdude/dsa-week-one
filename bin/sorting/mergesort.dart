void mergeSort(List arr) {
  if (arr.length > 1) {
    int mid = arr.length ~/ 2;

    List left = arr.sublist(0, mid);
    List right = arr.sublist(mid);

    mergeSort(left);
    mergeSort(right);

    int i = 0, j = 0, k = 0;
    while (i < left.length && j < right.length) {
      if (left[i] < right[j]) {
        arr[k] = left[i];
        i++;
      } else {
        arr[k] = right[j];
        j++;
      }
      k++;
    }

    while (i < left.length) {
      arr[k] = left[i];
      i++;
      k++;
    }
    while (j < right.length) {
      arr[k] = right[j];
      j++;
      k++;
    }
  }
}


void main(List<String> args) {
  List<int> arr = [7, 3, 9, 1, 10, 5, 2, 8, -1, 12];
  mergeSort(arr);
  print(arr);
}
