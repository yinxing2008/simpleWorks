Page({
  data: {
    array: [],
    arrayStr: '',
    isGameOver: false
  },
  onLoad: function () {
    this.shuffle() 
  },
  sort() {
    let array = this.data.array
    for (let i = 0; i < array.length - 1; i++) {
      for (let j = 0; j < array.length - 1 - i; j++) {
        if (array[j] > array[j + 1]) {
          let tmp = array[j + 1];
          array[j + 1] = array[j];
          array[j] = tmp;
        }
      }
    }

    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  shuffle() {
    let array = [2, 1, 5, 4, 3]
    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  convertToStr(array) {
    var result = ""
    for (let i = 0; i < array.length; i++) {
      result += array[i] + " "
    }
    return result;
  }

})