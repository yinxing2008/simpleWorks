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
    for (var i = Math.floor(array.length / 2) - 1; i >= 0; i--) {
      this.adjustHeap(array, i, array.length)
    }
    for (var j = array.length - 1; j > 0; j--) {
      var temp = array[0]
      array[0] = array[j]
      array[j] = temp
      this.adjustHeap(array, 0, j)
    }
    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  adjustHeap(array: number[], i: number, length: number) {
    var tmp = array[i]
    for (var j = i * 2 + 1; j < length; j = j * 2 + 1) {
      if (j + 1 < length && array[j] < array[j + 1]) {
        j++
      }
      if (array[j] > tmp) {
        array[i] = array[j]
        i = j
      } else {
        break
      }
    }
    array[i] = tmp
  },
  convertToStr(array: number[]) {
    var result = ""
    for (let i = 0; i < array.length; i++) {
      result += array[i] + " "
    }
    return result;
  }

})