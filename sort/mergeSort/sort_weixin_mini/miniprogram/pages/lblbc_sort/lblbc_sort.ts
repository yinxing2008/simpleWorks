/*
 厦门大学计算机专业 | 前华为工程师
 专注《零基础学编程系列》  http://lblbc.cn/blog
 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 公众号：蓝不蓝编程
 */
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
    let array = this.data.array
    var first = 0
    var last = array.length - 1
    this.mergeSort(array, first, last)
    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  mergeSort(array: number[], first: number, last: number) {
    if (first < last) {
      var mid = Math.floor((first + last) / 2)
      this.mergeSort(array, first, mid)
      this.mergeSort(array, mid + 1, last)
      this.binaryMerge(array, first, mid, last)
    }
  },
  binaryMerge(array: number[], first: number, mid: number, last: number) {
    var tmpArray = Array(array.length).fill(0)
    var left: number, right: number, index: number
    for (index = first; index <= last; index++) {
      tmpArray[index] = array[index]
    }
    index = first
    left = first
    right = mid + 1
    for (; left <= mid && right <= last && index <= last; index++) {
      if (tmpArray[left] <= tmpArray[right]) {
        array[index] = tmpArray[left++]
      } else {
        array[index] = tmpArray[right++]
      }
    }
    while (left <= mid) {
      array[index++] = tmpArray[left++]
    }
    while (right <= last) {
      array[index++] = tmpArray[right++]
    }
  },
  convertToStr(array: number[]) {
    var result = ""
    for (let i = 0; i < array.length; i++) {
      result += array[i] + " "
    }
    return result;
  }

})