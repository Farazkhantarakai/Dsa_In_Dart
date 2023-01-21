class Sort {
  List<int> list;
  int value;

  Sort(this.list, this.value);

  void bubbleSort() {
    print('befor sorting elements are $list');
    int size = list.length;
    int value = 0;
    while (value < size) {
      for (var i = 0; i < list.length - 1; i++) {
        if (list[i + 1] < list[i]) {
          var temp = list[i];
          list[i] = list[i + 1];
          list[i + 1] = temp;
        }
      }
      value = value + 1;
    }
    print(list);
  }
}
