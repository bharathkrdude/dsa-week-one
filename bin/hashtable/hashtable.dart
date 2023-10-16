class MyMap {
  late List<dynamic> keys;
  late List<dynamic> values;
  late int capacity;

  MyMap(int capacity) {
    this.keys = List.filled(capacity, 0);
    this.values = List.filled(capacity, 0);
    this.capacity = capacity;
  }

  int _hash(dynamic key) {
    // The hash function returns an integer between 0 and capacity - 1
    return key.hashCode % capacity;
  }

  void put(dynamic key, dynamic value) {
    int index = _hash(key);

    // Linear probing to resolve collisions
    while (keys[index] != null && keys[index] != key) {
      index = (index + 1) % capacity;
    }

    // If the key already exists in the hash table, update its value
    if (keys[index] == key) {
      values[index] = value;
    }
    // Otherwise, add the new key-value pair to the hash table
    else {
      keys[index] = key;
      values[index] = value;
    }
  }

  dynamic get(dynamic key) {
    int index = _hash(key);

    // Linear probing to find the key in the hash table
    while (keys[index] != null && keys[index] != key) {
      index = (index + 1) % capacity;
    }

    // If the key is found, return its value
    if (keys[index] == key) {
      return values[index];
    }
    // Otherwise, return null
    else {
      return null;
    }
  }

  void remove(dynamic key) {
    int index = _hash(key);

    // Linear probing to find the key in the hash table
    while (keys[index] != null && keys[index] != key) {
      index = (index + 1) % capacity;
    }

    // If the key is found, remove it from the hash table
    if (keys[index] == key) {
      keys[index] = null;
      values[index] = null;
    }
  }
}

void main() {
  MyMap myMap = MyMap(9);

  myMap.put('Alice', 1234567890);
  myMap.put('Bob', 9876543210);
  myMap.put('Charlie', 5555555555);

  print(myMap.get('Alice')); // prints 1234567890

  myMap.remove('Bob');

  print(myMap.get('Bob')); 
  print(myMap.get('Alice'));
  // prints null

}
