Page({
  data: {
    array: [2, 1, 5, 4, 3],
    arrayStr: '',
  },
  onLoad: function () {
    this.shuffle()
  },
  shuffle() {
    let array = [2, 1, 5, 4, 3]
    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  sort() {
    let array = this.data.array;
    this.sortMe(array, 0, array.length - 1);
    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  sortMe(array: number[], low: number, high: number) {
    if (low >= high) {
      return;
    }
    var index = array[low];
    var i = low;
    var j = high;
    while (i < j) {
      while (i < j && array[j] >= index) {
        j--;
      }
      if (i < j) {
        array[i] = array[j];
        i++;
      }
      while (i < j && array[i] < index) {
        i++;
      }
      if (i < j) {
        array[j] = array[i];
        j--;
      }
    }
    array[i] = index;
    this.sortMe(array, low, i - 1);
    this.sortMe(array, i + 1, high);
  },
  convertToStr(array: number[]) {
    var result = "";
    for (let i = 0; i < array.length; i++) {
      result += array[i] + " ";
    }
    return result;
  }

})