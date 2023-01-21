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
    var max = this.getMaxValue(array)
    for (var exp = 1; max / exp > 0; exp *= 10) {
      this.countSort(array, exp)
    }

    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  countSort(array: number[], exp: number) {
    var tmpArr = Array(array.length).fill(0)
    var bucketArr = Array(10).fill(0)

    for (var i = 0; i < array.length; i++) {
      bucketArr[Math.floor(array[i] / exp) % 10]++
    }

    for (var i = 1; i < 10; i++) {
      bucketArr[i] += bucketArr[i - 1]
    }

    for (var i = array.length - 1; i >= 0; i--) {
      tmpArr[bucketArr[Math.floor(array[i] / exp) % 10] - 1] = array[i]
      bucketArr[Math.floor(array[i] / exp) % 10]--
    }

    for (var i = 0; i < array.length; i++) {
      array[i] = tmpArr[i]
    }
  },
  getMaxValue(array: number[]) {
    var max = array[0]
    for (var i = 1; i < array.length; i++) {
      if (array[i] > max) {
        max = array[i]
      }
    }

    return max
  },
  convertToStr(array: number[]) {
    var result = ""
    for (let i = 0; i < array.length; i++) {
      result += array[i] + " "
    }
    return result;
  }

})