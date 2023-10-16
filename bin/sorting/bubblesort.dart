

void bubbleSorting(List<int> arr){
int? size = arr.length-1;
for (var i = 0; i < size; i++) {
  for(var j = 0; j < size-i ;j++){
    if (arr[j]>arr[j+1]) {
      int temp = arr[j];
      arr[j] = arr[j+1];
      arr[j+1] = temp;
    }
  }
}
}
void main(List<String> args) {
  List<int> arr =[4,3,7,1,-1,8,10,-3,9];
  print("array before swapping$arr");
  bubbleSorting(arr);
  print("array after swapping$arr");
}


void anothorSort(List arr){
if (arr.length > 1) {
  int mid = arr.length ~/2;

  List left = arr.sublist(0,mid);
  List right = arr.sublist(mid);

  anothorSort(left);
  anothorSort(right);

  int i =0 , j = 0, k = 0;

  while (i < left.length && j < right.length) {
    
    if (left[i] < right[j]) {
      arr[k] = left[i];
      i++;
    }
    else{
      
    }
  }
}

}

void soet(List<int> arr){
  int size = arr.length-1;
  for (var i = 0; i < size; i++) {
  for (var j = 0; j < size-1; j++) {
    if (arr[j] > arr[j+1]) {
      int temp = arr[j];
      arr[j] = arr[j+1];
      arr[j+1] = temp;
    }
  }  
  }
}
